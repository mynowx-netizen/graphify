## 10. Claude Code + Roblox Studio implementation

Every engine API below was checked against the official reference on create.roblox.com
(fetched 2026-11-08). Tool facts come from each tool's README or DevForum thread.
**Rec.** marks my recommendations. Two current doc facts change older advice:

- `TeleportService:ReserveServer` is **deprecated**. Use `TeleportOptions.ReservedServerId`
  with a GUID instead.
- **Server Authority** (server-owned physics with client prediction) has been fully released.
  It is opt-in ([DevForum, 2026-07-09](https://devforum.roblox.com/t/4727993)).

### 10.1 Toolchain

| Tool | Job | Who |
|---|---|---|
| Rokit | Pins tool versions (`rokit.toml`) | Community |
| Rojo 7 | File sync (`rojo serve`), builds, `rojo sourcemap` | Community |
| Wally | Packages (`[dependencies]`, `[server-dependencies]`, `[dev-dependencies]`) | Community |
| luau-lsp | Types from `rojo sourcemap --watch default.project.json --output sourcemap.json`; `luau-lsp analyze` in CI | Community |
| Selene / StyLua | Lint (`std = "roblox"`) / format | Community |
| Lune | Standalone Luau runtime for pure-module tests | Community |
| Jest Lua | `jsdotlua/jest-globals`; runs only inside Roblox; used by Roblox internally | jsdotlua (Roblox OSS) |
| Open Cloud Luau Execution | Headless in-place scripts (≤5 min, 10 concurrent) for CI | Roblox |
| Studio MCP server | Built into Studio (Assistant, then ..., then Manage MCP Servers); Claude Code quick-connect; `execute_luau`, `start_stop_play`, `get_console_output`, `screen_capture`, `character_navigation`; follows teleports | Roblox |

**Rec.:** Rojo owns code and config. Studio owns the world: modules, templates and Workspace
settings (the streaming properties are non-scriptable). Test in three layers: Lune, then Jest
Lua, then MCP playtests.

**Rec. — the repo `CLAUDE.md` should contain:**

- **Commands:** `rokit install`, `wally install`, `rojo serve run.project.json`, `selene src`,
  `stylua --check src`, `lune run tests`.
- **The folder map** below.
- **Invariants:** `--!strict`; server decides outcomes; remotes only via `NetSpec`; numbers
  only in `Config/`; no yields in `UpdateAsync` transforms; never name a module `RunService`.
- **Recipes:** add an item, site, remote or quest.
- **Never edit:** `Packages/`, `sourcemap.json`.
- **Done means:** lint, types and tests pass, plus a clean MCP playtest.

### 10.2 Layout and modules

**Rec.:** one universe with two places. Hub ("The Depot", 20–30 players) and Run (one
reserved server per run) share one repo, with one project file each. The run state machine is
**MatchService**, because `RunService` is an engine service.

```
src/shared/ → ReplicatedStorage.Shared: Net NetSpec Guard Schema ItemRegistry Signal
  Config/  Items Artifacts Rarities Sites Modifiers Tools Prices Quests Nuisances Carry Perf
  Pure/    Payout Odds TokenBucket          (no services: Lune-testable)
src/server/ → ServerScriptService.Server   (Main.server.luau is the ONLY Script)
  Common/  DataService EconomyService InventoryService MonetizationService
           AnalyticsService(wrapper) LeaderboardService TeleportFlow AntiCheat
  Hub/     PartyService QuestService CatalogService MuseumService ShopService
  Run/     MatchService SiteGenerator ItemService CarryService ToolService
           HazardService NuisanceAI ExtractionService
  Vendor/  ProfileStore
src/client/ → StarterPlayerScripts.Client: Main, Store,
  Common/{Input Camera Fx Ragdoll Hud UI/}  Hub/{Party Shop Museum PhotoMode}  Run/{Carry Tool Hazard Results}
```

```json
{ "name": "salvage-run", "tree": { "$className": "DataModel",
  "ReplicatedStorage": { "Shared": { "$path": "src/shared" }, "Packages": { "$path": "Packages" } },
  "ServerScriptService": { "Server": { "$className": "Folder",
    "Main": { "$path": "src/server/Main.server.luau" },
    "Common": { "$path": "src/server/Common" },
    "Vendor": { "$path": "src/server/Vendor" },
    "Place": { "$path": "src/server/Run" } } },
  "StarterPlayer": { "StarterPlayerScripts": { "Client": { "$className": "Folder",
    "Main": { "$path": "src/client/Main.client.luau" },
    "Common": { "$path": "src/client/Common" },
    "Place": { "$path": "src/client/Run" } } } } } }
```

`hub.project.json` swaps `Run` for `Hub`.

**Rec. — service contract:** each service exports `init()` (connects remotes, never yields)
and `start()` (may spawn loops). `Main` runs every `init()` before any `start()`.
Dependencies point down only (Place to Common to Shared). Services share news through `Signal`
events (`ItemDeposited`, `RunCompleted`, `ItemBroken`).

### 10.3 Networking

Roblox caps client-to-server traffic at about 500 calls per second per client, per remote type.
`UnreliableRemoteEvent` is unordered and drops payloads over 1,000 bytes. `InvokeClient`
carries "serious risks", so functions here go client-to-server only. Item state replicates as
**Attributes**, and NPCs and debris replicate as physics.

| Remote | Kind | Payload |
|---|---|---|
| GrabItem / ReleaseItem / UseTool | Event C→S | uid / throwDir: unit Vector3? / toolId, targetUid? |
| Emote / ReadyUp / EquipLoadout / UpdateSettings | Event C→S | emoteId / none / slot, toolIds[≤4] / key, value |
| PartyInvite / PartyRespond / PartyLeave / PartyReady | Event C→S | userId / partyId, accept / none / ready |
| SelectContract / LaunchRun / BuyItem | Function C→S | contractId / none / sku → ok, err |
| MuseumPlace / MuseumVisit / ClaimQuest / ClaimPassTier | Function C→S | slot, artifactId / ownerUserId / questId / tier, track |
| DataSnapshot / DataChanged / PhaseChanged / QuotaChanged | Event S→C | profile / path, value / phase, endsAt / banked, quota |
| HazardTelegraph / Ragdoll / PayoutSummary / ArtifactRevealed / PartyUpdated / Notify | Event S→C | kind, pos, impactAt / secs, impulse / breakdown / id, rarity, odds / snapshot / key, args |
| PlayFx / ItemImpactFx | Unreliable S→C | fxId, pos / uid, intensity |

Rates (Rec.): grab and release 4/s, tools 3/s, purchases 1/s, party 0.5–1/s.

```lua
--!strict
-- Shared/Guard.luau: checks for untrusted payloads
export type Check = (unknown) -> boolean
local Guard = {}
function Guard.int(lo: number, hi: number): Check
	return function(v) return typeof(v) == "number" and v // 1 == v and v >= lo and v <= hi end
end
function Guard.str(maxLen: number): Check
	return function(v) return typeof(v) == "string" and #v <= maxLen and utf8.len(v) ~= nil end
end
function Guard.unit(v: unknown): boolean -- finite unit Vector3; NaN fails the comparison
	return typeof(v) == "Vector3" and math.abs(v.Magnitude - 1) < 0.01
end
function Guard.opt(check: Check): Check return function(v) return v == nil or check(v) end end
return Guard

-- Shared/NetSpec.luau (excerpt). C→S entries MUST have args ({} = none). S→C entries have none.
local G = require(script.Parent.Guard)
export type Spec = { kind: "Event" | "Unreliable" | "Function", args: { G.Check }?, rate: number?, burst: number? }
return {
	GrabItem = { kind = "Event", args = { G.int(1, 2 ^ 31) }, rate = 4, burst = 4 },
	ReleaseItem = { kind = "Event", args = { G.opt(G.unit) }, rate = 4, burst = 4 },
	BuyItem = { kind = "Function", args = { G.str(32) }, rate = 1, burst = 3 },
	PhaseChanged = { kind = "Event" },
	PlayFx = { kind = "Unreliable" },
} :: { [string]: Spec }
```

```lua
--!strict
-- Shared/Net.luau: the only module that touches remotes.
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local SPEC = require(script.Parent.NetSpec)

local events: { [string]: RemoteEvent } = {}
local unreliable: { [string]: UnreliableRemoteEvent } = {}
local functions: { [string]: RemoteFunction } = {}
local buckets: { [Player]: { [string]: { tokens: number, at: number } } } = {}
local strikes: { [Player]: number } = {}
local KICK_AFTER = 25 -- malformed calls per session; tune from live logs

local function register(r: Instance)
	if r:IsA("RemoteEvent") then events[r.Name] = r
	elseif r:IsA("UnreliableRemoteEvent") then unreliable[r.Name] = r
	elseif r:IsA("RemoteFunction") then functions[r.Name] = r end
end

local function strike(player: Player)
	strikes[player] = (strikes[player] or 0) + 1
	if strikes[player] == KICK_AFTER then player:Kick("Connection error") end
end

-- Token bucket first (over-rate calls are dropped quietly), then schema (malformed = strike).
local function admit(player: Player, name: string, ...: unknown): boolean
	local spec = SPEC[name]
	local checks = spec.args
	if not checks then return false end -- S→C remotes are never admitted
	local per = buckets[player] or {}
	buckets[player] = per
	local now, burst = os.clock(), spec.burst or 3
	local b = per[name] or { tokens = burst, at = now }
	b.tokens, b.at = math.min(burst, b.tokens + (now - b.at) * (spec.rate or 1)), now
	per[name] = b
	if b.tokens < 1 then return false end
	b.tokens -= 1
	if select("#", ...) > #checks then strike(player) return false end
	for i, check in checks do
		if not check((select(i, ...))) then strike(player) return false end
	end
	return true
end

if RunService:IsServer() then
	local folder = Instance.new("Folder")
	folder.Name = "Net"
	for name, spec in SPEC do
		local r: Instance = if spec.kind == "Function" then Instance.new("RemoteFunction")
			elseif spec.kind == "Unreliable" then Instance.new("UnreliableRemoteEvent")
			else Instance.new("RemoteEvent")
		r.Name = name
		r.Parent = folder
		register(r)
	end
	folder.Parent = ReplicatedStorage
	Players.PlayerRemoving:Connect(function(p) buckets[p], strikes[p] = nil, nil end)
else
	local folder = ReplicatedStorage:WaitForChild("Net")
	for name in SPEC do register(folder:WaitForChild(name)) end
end

local Net = {}
function Net.on(name: string, handler: (Player, ...any) -> ()) -- server
	local function guarded(player: Player, ...: unknown)
		if admit(player, name, ...) then handler(player, ...) end
	end
	local ev, un = events[name], unreliable[name]
	if ev then ev.OnServerEvent:Connect(guarded) elseif un then un.OnServerEvent:Connect(guarded) end
end
function Net.handle(name: string, handler: (Player, ...any) -> ...any) -- server
	functions[name].OnServerInvoke = function(player: Player, ...: unknown)
		if not admit(player, name, ...) then return false, "rejected" end
		return handler(player, ...)
	end
end
function Net.fire(name: string, player: Player, ...: any)
	local ev, un = events[name], unreliable[name]
	if ev then ev:FireClient(player, ...) elseif un then un:FireClient(player, ...) end
end
function Net.fireAll(name: string, ...: any)
	local ev, un = events[name], unreliable[name]
	if ev then ev:FireAllClients(...) elseif un then un:FireAllClients(...) end
end
function Net.send(name: string, ...: any) -- client
	local ev, un = events[name], unreliable[name]
	if ev then ev:FireServer(...) elseif un then un:FireServer(...) end
end
function Net.invoke(name: string, ...: any): ...any return functions[name]:InvokeServer(...) end
function Net.listen(name: string, callback: (...any) -> ())
	local ev, un = events[name], unreliable[name]
	if ev then ev.OnClientEvent:Connect(callback) elseif un then un.OnClientEvent:Connect(callback) end
end
return Net
```

### 10.4 Data

**Rec.: [ProfileStore](https://devforum.roblox.com/t/3190543)** (community, by loleris; one
ModuleScript; its thread lists Grow a Garden and Dead Rails as users). It provides:

- Session locking: a new server asks the old one, via MessagingService, for a final save.
  That settles the hub-to-run race.
- Auto-save every 300 s.
- Shutdown saves.
- `.Mock` stores for Studio.

**Hand-rolled alternative:** store `{lock = {jobId, time}}`. The `UpdateAsync` transform
returns `nil` (cancel) while another JobId holds a fresh lock, and never yields.

**Limits:** 4,194,304 characters per value, 50-character keys, `UpdateAsync` uses both the
read and write budgets, and `BindToClose` gets 30 s.

```lua
--!strict
-- Shared/Schema.luau: bump VERSION and add a MIGRATIONS step for every saved-shape change.
export type Artifact = { count: number, firstAt: number, bestCondition: number }
export type Quest = { id: string, progress: number, claimed: boolean }
export type PlayerData = {
	version: number, cash: number, tokens: number, xp: number, crewLevel: number,
	tools: { [string]: number }, truckTier: number, -- toolId -> upgrade tier
	loadouts: { { string } }, loadoutSlots: number,
	permits: { [string]: number },          -- siteId -> unused permits (Cash sink)
	artifacts: { [string]: Artifact },      -- the Catalog
	museum: { capacity: number, slots: { [string]: string } },
	cosmetics: { owned: { [string]: boolean }, equipped: { [string]: string } },
	quests: { weekKey: number, weekly: { Quest }, dayKey: number, daily: { Quest } },
	pass: { season: number, xp: number, premium: boolean, claimed: { [string]: boolean } },
	pity: { [string]: number },             -- siteId -> successful runs since last artifact
	stats: { runs: number, clears: number, bestHaul: number, fastestClear: number, broken: number },
	runLedger: { string },                  -- last 20 paid runIds: payout is idempotent
	purchaseIds: { string },                -- last 100 receipt PurchaseIds
	settings: { shake: boolean, music: number },
	meta: { firstJoin: number, lastJoin: number, tutorialStep: number },
}
local Schema = { VERSION = 3 }
function Schema.template(): PlayerData
	return { version = Schema.VERSION, cash = 0, tokens = 0, xp = 0, crewLevel = 1, tools = { dolly = 0 },
		truckTier = 1, loadouts = { { "dolly" } }, loadoutSlots = 2, permits = {}, artifacts = {},
		museum = { capacity = 12, slots = {} }, cosmetics = { owned = {}, equipped = {} },
		quests = { weekKey = 0, weekly = {}, dayKey = 0, daily = {} },
		pass = { season = 1, xp = 0, premium = false, claimed = {} }, pity = {},
		stats = { runs = 0, clears = 0, bestHaul = 0, fastestClear = 0, broken = 0 },
		runLedger = {}, purchaseIds = {}, settings = { shake = true, music = 0.5 },
		meta = { firstJoin = 0, lastJoin = 0, tutorialStep = 0 } }
end
Schema.MIGRATIONS = { -- [n] upgrades v(n-1) -> v(n); never edit a shipped step
	[2] = function(d: any) d.pity = d.pity or {} end,
	[3] = function(d: any) d.stats.broken = d.stats.broken or 0 end,
} :: { [number]: (any) -> () }
return Schema
```

```lua
--!strict
-- Server/Common/DataService.luau: sole owner of ProfileStore sessions.
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ProfileStore = require(script.Parent.Parent.Vendor.ProfileStore)
local Schema = require(ReplicatedStorage.Shared.Schema)
local Net = require(ReplicatedStorage.Shared.Net)

local store = ProfileStore.New("PlayerData", Schema.template())
if RunService:IsStudio() then store = store.Mock end -- playtests never write live keys
type Profile = typeof(store:StartSessionAsync(""))

local DataService = {}
local profiles: { [Player]: Profile } = {}
local loaded = Instance.new("BindableEvent")
DataService.Loaded = loaded.Event

local function migrate(data: any): boolean
	local v = data.version or 1
	if v > Schema.VERSION then return false end -- saved by a newer build: don't touch it
	while v < Schema.VERSION do
		v += 1
		local step = Schema.MIGRATIONS[v]
		if step then step(data) end
		data.version = v
	end
	return true
end

local function onPlayerAdded(player: Player)
	local profile = store:StartSessionAsync(`u_{player.UserId}`, {
		Cancel = function() return player.Parent ~= Players end,
	})
	if not profile then player:Kick("Could not load your data. Please rejoin.") return end
	profile:AddUserId(player.UserId) -- right-to-erasure association
	if not migrate(profile.Data) then
		profile:EndSession()
		player:Kick("A new update is out. Please rejoin.")
		return
	end
	profile:Reconcile() -- fill fields added to the template later
	profile.OnSessionEnd:Connect(function()
		profiles[player] = nil
		player:Kick("Your data was opened on another server. Please rejoin.")
	end)
	if player.Parent ~= Players then profile:EndSession() return end
	local data = profile.Data :: Schema.PlayerData
	if data.meta.firstJoin == 0 then data.meta.firstJoin = os.time() end
	data.meta.lastJoin = os.time()
	profiles[player] = profile
	loaded:Fire(player)
	Net.fire("DataSnapshot", player, data)
end

function DataService.get(player: Player): Schema.PlayerData?
	local p = profiles[player]
	return if p and p:IsActive() then p.Data :: Schema.PlayerData else nil
end
-- Every write goes through here so replication (and later auditing) lives in one place.
function DataService.update(player: Player, path: string, mutate: (Schema.PlayerData) -> any): boolean
	local data = DataService.get(player)
	if not data then return false end
	Net.fire("DataChanged", player, path, mutate(data))
	return true
end
function DataService.profile(player: Player): Profile? return profiles[player] end -- receipts only
function DataService.saveNow(player: Player) -- run payout, receipts
	local p = profiles[player]
	if p and p:IsActive() then p:Save() end
end
function DataService.init()
	for _, p in Players:GetPlayers() do task.spawn(onPlayerAdded, p) end
	Players.PlayerAdded:Connect(onPlayerAdded)
	Players.PlayerRemoving:Connect(function(player)
		local p = profiles[player]
		if p then p:EndSession() end
	end)
end
return DataService
```

**Purchases.** `ProcessReceipt` can run on two servers at once, may yield indefinitely, and
is retried only on the next purchase or rejoin. MonetizationService follows ProfileStore's
"cache PurchaseIds" pattern:

1. No active profile here: return `NotProcessedYet`.
2. New `PurchaseId`: grant it and append it to `purchaseIds` (cap 100).
3. Call `profile:Save()` and wait on `OnAfterSave` until `LastSavedData` holds the ID.
4. Return `PurchaseGranted`.

Game passes use a per-session `UserOwnsGamePassAsync` cache. ProfileStore saves on shutdown
itself, so `BindToClose` is only for extras such as leaderboard flushes.

**Leaderboards.** Ordered stores `"BestHaul_w" .. weekIndex` and `"FastestClear_" .. siteId`
hold integers keyed by `runId`, with rosters in a normal store. `UpdateAsync` keeps the
better value, and `GetSortedAsync(false, 50)` reads them (`true` for fastest). **Rec.:** each
hub caches the top 50 for 2–5 min.

**MemoryStore** (quota 64 KB + 1.2 KB × users; 32 KB per value; 45-day maximum TTL):

- `GetHashMap("Runs")`: run tickets, 900 s TTL.
- `GetHashMap("Parties")`: members plus hub `JobId`, so invitees can follow with
  `TeleportOptions.ServerInstanceId`.
- `GetQueue("QuickPlay_" .. siteId)`: Roblox's documented matchmaking pattern. Hubs enqueue
  players, and one hub reads 4, `RemoveAsync`s them and launches.

### 10.5 Items, rarities, Artifacts

- **`Config/Items`** lists valuables: template, baseValue, jitter, mass, fragility (0–1),
  carriers, sites, lootWeight.
- **Spawning.** `ItemService.spawn(def, cframe, rng)` clones the template, sets density so
  `AssemblyMass` equals `mass`, sets `ModelStreamingMode = Atomic`, tags it `Valuable`,
  assigns a `uid` and calls `SetNetworkOwner(nil)`. Value, condition and carry credit live on
  the server; Attributes mirror them for the UI.
- **Damage** = `fragility × max(0, speed − threshold)`. Server-owned items use
  `BindToCollisionSummaries` (it reports only collisions the machine owns). Carried items use
  the change in `AssemblyLinearVelocity`.
- **Rec. guardrail:** Roblox's paid-random-items rules cover luck boosts and pity systems tied
  to Robux, and require numerical odds. Keep anything purchasable out of the roll's inputs,
  and test for it.

```lua
--!strict
-- Shared/ItemRegistry.luau (Artifact part). Pure: only config tables.
local Config = script.Parent.Config
local Rarities = require(Config.Rarities) -- { order: {string}, weight: {[string]: number} }
local Artifacts = require(Config.Artifacts) -- { {id, name, rarity, sites} }
local Sites = require(Config.Sites) -- [siteId] = { artifactChance, pityRuns, ... }

export type ArtifactDef = { id: string, name: string, rarity: string, sites: { string } }
local Registry = { artifacts = {} :: { [string]: ArtifactDef } }
local pools: { [string]: { [string]: { ArtifactDef } } } = {} -- site -> rarity -> defs

for _, def: ArtifactDef in Artifacts do
	assert(Registry.artifacts[def.id] == nil, `duplicate artifact {def.id}`)
	assert(Rarities.weight[def.rarity], `{def.id}: unknown rarity {def.rarity}`)
	Registry.artifacts[def.id] = def
	for _, site in def.sites do
		pools[site] = pools[site] or {}
		pools[site][def.rarity] = pools[site][def.rarity] or {}
		table.insert(pools[site][def.rarity], def)
	end
end

-- ONE source for the odds the UI shows and the roll uses: P(drop), P(rarity | drop).
function Registry.odds(siteId: string): (number, { [string]: number })
	local byRarity: { [string]: number }, total = {}, 0
	for _, r in Rarities.order do
		local pool = pools[siteId] and pools[siteId][r]
		if pool and #pool > 0 then
			byRarity[r] = Rarities.weight[r]
			total += Rarities.weight[r]
		end
	end
	for r, w in byRarity do byRarity[r] = w / total end
	return Sites[siteId].artifactChance, byRarity
end

-- Server only. `rand` wraps a server Random.new(), never the site seed (clients can learn it).
function Registry.rollArtifact(siteId: string, rand: () -> number, pity: number, quotaRatio: number): ArtifactDef?
	local chance, byRarity = Registry.odds(siteId)
	chance = math.min(chance * math.clamp(quotaRatio, 1, 1.5), 0.9) -- beating quota helps (shown in UI)
	if pity < Sites[siteId].pityRuns and rand() >= chance then return nil end
	local roll, acc, lastPool = rand(), 0, nil :: { ArtifactDef }?
	for _, r in Rarities.order do
		local p = byRarity[r]
		if p then
			acc += p
			lastPool = pools[siteId][r]
			if roll < acc then break end
		end
	end
	if not lastPool then return nil end
	return lastPool[math.floor(rand() * #lastPool) + 1]
end
return Registry
```

ExtractionService calls this at payout:
`local r = Random.new(); rollArtifact(site, function() return r:NextNumber() end, data.pity[site] or 0, banked / quota)`.
It then updates `pity` and fires `ArtifactRevealed` with the odds it used.

### 10.6 Site generation and the run state machine

```lua
--!strict
-- Server/Run/SiteGenerator.luau: seed -> grid layout -> modules + loot.
-- Same seed + config + modules = same building (store configVersion beside the seed).
local ServerStorage = game:GetService("ServerStorage")
local Sites = require(game:GetService("ReplicatedStorage").Shared.Config.Sites)
local ItemService = require(script.Parent.ItemService)

export type Cell = { x: number, z: number, mask: number, depth: number }
export type Layout = { cells: { Cell }, vault: Cell }
type Variant = { model: Model, turns: number, weight: number }

local N, E, S, W = 1, 2, 4, 8 -- door bits: N=-Z, E=+X, S=+Z (street), W=-X
local DIRS = { { 0, -1, N, S }, { 1, 0, E, W }, { 0, 1, S, N }, { -1, 0, W, E } } -- dx, dz, bit, opposite
local function turnCW(m: number): number
	return bit32.band(bit32.bor(bit32.lshift(m, 1), bit32.rshift(m, 3)), 15)
end

local SiteGenerator = {}

-- Pure: Lune tests assert determinism, room count, and that the vault is a dead end.
function SiteGenerator.layout(rng: Random, rooms: number, span: number): Layout
	local hall: Cell = { x = 0, z = -1, mask = S, depth = 1 }
	local cells = { { x = 0, z = 0, mask = bit32.bor(N, S), depth = 0 } :: Cell, hall } -- [1] = entrance
	local taken: { [string]: boolean } = { ["0,0"] = true, ["0,-1"] = true, ["0,1"] = true }
	for _ = 1, rooms * 40 do
		if #cells >= rooms then break end
		local from = cells[math.max(2, #cells - rng:NextInteger(0, 3))] -- grow near newest: halls, not blobs
		local d = DIRS[rng:NextInteger(1, 4)]
		local x, z = from.x + d[1], from.z + d[2]
		local key = `{x},{z}`
		if not taken[key] and math.abs(x) <= span and z < 0 and z >= -2 * span then
			taken[key] = true
			from.mask = bit32.bor(from.mask, d[3])
			table.insert(cells, { x = x, z = z, mask = d[4], depth = from.depth + 1 })
		end
	end
	local vault = hall -- deepest dead end: vault room, first section to collapse
	for _, c in cells do
		if (c.mask == N or c.mask == E or c.mask == S or c.mask == W) and c.depth > vault.depth then vault = c end
	end
	return { cells = cells, vault = vault }
end

-- Studio-built module Models: pivot at cell centre, attribute Doors = mask.
local function index(siteId: string): { [string]: { [number]: { Variant } } }
	local out: { [string]: { [number]: { Variant } } } = {}
	local folder = ServerStorage:WaitForChild("SiteModules"):WaitForChild(siteId)
	for _, def in Sites[siteId].modules do -- { name, role = "entrance"|"room"|"vault", weight }
		local model = folder:WaitForChild(def.name) :: Model
		local mask = model:GetAttribute("Doors") :: number
		local byMask = out[def.role] or {}
		out[def.role] = byMask
		local maxTurns = if def.role == "entrance" then 0 else 3 -- street door never rotates
		for turns = 0, maxTurns do
			byMask[mask] = byMask[mask] or {}
			table.insert(byMask[mask], { model = model, turns = turns, weight = def.weight })
			mask = turnCW(mask)
		end
	end
	return out
end

local function pick(rng: Random, options: { Variant }): Variant
	local total = 0
	for _, v in options do total += v.weight end
	local r = rng:NextNumber() * total
	for _, v in options do
		r -= v.weight
		if r <= 0 then return v end
	end
	return options[#options]
end

function SiteGenerator.build(siteId: string, seed: number, parent: Instance): Layout
	local site = Sites[siteId]
	local rng = Random.new(seed)
	local layout = SiteGenerator.layout(rng, rng:NextInteger(site.minRooms, site.maxRooms), site.span)
	local modules = index(siteId)
	for i, cell in layout.cells do
		local role = if cell.depth == 0 then "entrance" elseif cell == layout.vault then "vault" else "room"
		local options = assert(modules[role] and modules[role][cell.mask], `{siteId}: no {role} for doors {cell.mask}`)
		local v = pick(rng, options)
		local room = v.model:Clone()
		room:PivotTo(CFrame.new(cell.x * site.cellSize, 0, cell.z * site.cellSize)
			* CFrame.Angles(0, -v.turns * math.pi / 2, 0)) -- negative Y angle = clockwise from above
		room:SetAttribute("Depth", cell.depth)
		room.Parent = parent
		ItemService.spawnLoot(room, site, rng) -- "LootSpot" Attachments; must use only this rng
		if i % 4 == 0 then task.wait() end -- Roblox perf guide: build big trees in chunks
	end
	return layout
end
return SiteGenerator
```

A kit needs five shapes: dead end, straight, corner, T and cross. Rotations cover all 15
door masks. Add one N+S entrance and a few vault dead ends. A config test asserts that
every reachable mask has a module.

```lua
--!strict
-- Server/Run/MatchService.luau: one run per reserved server; the only writer of the phase.
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Net = require(ReplicatedStorage.Shared.Net)
local SiteGenerator = require(script.Parent.SiteGenerator)
local HazardService = require(script.Parent.HazardService)
local ExtractionService = require(script.Parent.ExtractionService)
local TeleportFlow = require(script.Parent.Parent.Common.TeleportFlow)

export type Phase = "Loading" | "Briefing" | "Active" | "Results" | "Closing"
type Run = { contract: TeleportFlow.Contract, endsAt: number, success: boolean }
type State = { enter: (Run) -> (), tick: (Run) -> Phase? }

local function now(): number return workspace:GetServerTimeNow() end
local function expired(run: Run): boolean return now() >= run.endsAt end

local STATES: { [Phase]: State } = {
	Loading = {
		enter = function(run)
			local folder = Instance.new("Folder")
			folder.Name, folder.Parent = "Site", workspace
			HazardService.prepare(run.contract, SiteGenerator.build(run.contract.siteId, run.contract.seed, folder))
			run.endsAt = now() + 30 -- arrival window
		end,
		tick = function(run)
			return if #Players:GetPlayers() >= #run.contract.members or expired(run) then "Briefing" else nil
		end,
	},
	Briefing = {
		enter = function(run) run.endsAt = now() + 8 end,
		tick = function(run) return if expired(run) then "Active" else nil end,
	},
	Active = {
		enter = function(run)
			run.endsAt = now() + run.contract.collapseSeconds
			HazardService.start(run.endsAt)
		end,
		tick = function(run)
			if ExtractionService.quotaMet() and ExtractionService.crewAtTruck() then
				run.success = true
				return "Results"
			end
			return if expired(run) or #Players:GetPlayers() == 0 then "Results" else nil
		end,
	},
	Results = {
		enter = function(run)
			HazardService.stop()
			-- skips players whose runLedger already has this runId, then DataService.saveNow
			ExtractionService.payout(run.contract, run.success, math.max(0, run.endsAt - now()))
			run.endsAt = now() + 12
		end,
		tick = function(run) return if expired(run) then "Closing" else nil end,
	},
	Closing = {
		enter = function(run) TeleportFlow.toHub(Players:GetPlayers(), run.contract) end,
		tick = function() return nil end,
	},
}

local MatchService = { phase = "Loading" :: Phase }
function MatchService.start(contract: TeleportFlow.Contract)
	local run: Run = { contract = contract, endsAt = 0, success = false }
	local function enter(p: Phase)
		MatchService.phase = p
		STATES[p].enter(run)
		Net.fireAll("PhaseChanged", p, run.endsAt) -- clients count down from server time
	end
	task.spawn(function()
		enter("Loading")
		while MatchService.phase ~= "Closing" do
			task.wait(0.25)
			local nextPhase = STATES[MatchService.phase].tick(run)
			if nextPhase then enter(nextPhase) end
		end
	end)
end
return MatchService
```

### 10.7 Physics carry

**Ownership:**

- Free valuables are server-owned.
- The first grab gives ownership to that carrier, so the item moves with no input lag.
- A second carrier adds an `AlignPosition` toward their own `HoldAttachment`, and the item
  settles between the two. The lead keeps ownership.
- On release the item returns to the server before any throw, because a server-owned part
  needs `ApplyImpulse` called from the server.

The docs warn that clients can teleport parts they own and fake `Touched`. So the server
re-checks speed, jumps, walls and tether distance at 10 Hz, and counts deposits with server
box queries.

```lua
--!strict
-- Server/Run/CarryService.luau: clients ask to grab/release; the server validates and decides.
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Net = require(ReplicatedStorage.Shared.Net)
local C = require(ReplicatedStorage.Shared.Config.Carry) -- grabRange, maxTether, maxSpeed, slack, liftMass...
local ItemService = require(script.Parent.ItemService)

type Carry = { carriers: { Player }, aligns: { [Player]: AlignPosition }, orient: AlignOrientation, lastGood: CFrame }
local carries: { [BasePart]: Carry } = {}
local carrying: { [Player]: BasePart } = {}
local wallRay = RaycastParams.new() -- IncludeInstances = site structure (setStructure)

local function holdPoint(player: Player): Attachment?
	local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
	return if hrp then hrp:FindFirstChild("HoldAttachment") :: Attachment? else nil
end

local function setSpeed(player: Player, mass: number) -- heavier share = slower walk
	local char = player.Character
	local hum = if char then char:FindFirstChildOfClass("Humanoid") :: Humanoid? else nil
	if hum then hum.WalkSpeed = C.walkSpeed * math.clamp(1 - mass / C.slowMass, C.minSpeedFactor, 1) end
end

local function release(player: Player, throwDir: Vector3?)
	local root = carrying[player]
	local carry = if root then carries[root] else nil
	if not root or not carry then return end
	carrying[player] = nil
	carry.aligns[player]:Destroy()
	carry.aligns[player] = nil
	table.remove(carry.carriers, table.find(carry.carriers, player) :: number)
	setSpeed(player, 0)
	if #carry.carriers > 0 then -- remaining carrier steers and simulates
		local lead = carry.carriers[1]
		carry.orient.Attachment1 = holdPoint(lead)
		root:SetNetworkOwner(lead)
		setSpeed(lead, root.AssemblyMass)
		return
	end
	carry.orient:Destroy()
	carries[root] = nil
	root:SetNetworkOwner(nil)
	if throwDir then root:ApplyImpulse(throwDir * C.throwSpeed * root.AssemblyMass) end
	ItemService.onReleased(root)
end

local function grab(player: Player, uid: number)
	local root, hold = ItemService.rootOf(uid), holdPoint(player)
	if carrying[player] or not root or not hold or root.Anchored then return end
	if (root.Position - hold.WorldCFrame.Position).Magnitude > C.grabRange then return end
	local carry = carries[root]
	if carry and #carry.carriers >= C.maxCarriers then return end
	local align = Instance.new("AlignPosition") -- TwoAttachment, ReactionForceEnabled=false (defaults)
	align.Attachment0, align.Attachment1 = ItemService.gripOf(root), hold
	align.MaxForce = C.liftMass * workspace.Gravity * 1.25 -- heavier items drag until a 2nd carrier joins
	align.Responsiveness = C.responsiveness
	align.Parent = root
	if not carry then
		local orient = Instance.new("AlignOrientation")
		orient.Attachment0, orient.Attachment1 = align.Attachment0, hold
		orient.MaxTorque, orient.Responsiveness = C.maxTorque, C.responsiveness
		orient.Parent = root
		carry = { carriers = {}, aligns = {}, orient = orient, lastGood = root.CFrame }
		carries[root] = carry
		root:SetNetworkOwner(player)
	end
	local c = carry :: Carry
	table.insert(c.carriers, player)
	c.aligns[player] = align
	carrying[player] = root
	for _, p in c.carriers do setSpeed(p, root.AssemblyMass / #c.carriers) end
	ItemService.onGrabbed(root, player) -- starts carry-distance credit for the payout split
end

local function validate(root: BasePart, carry: Carry, dt: number)
	local pos, last = root.Position, carry.lastGood.Position
	local tooFast = root.AssemblyLinearVelocity.Magnitude > C.maxSpeed
		or (pos - last).Magnitude > C.maxSpeed * dt + C.slack
	local throughWall = (pos - last).Magnitude > 0.5 and workspace:Raycast(last, pos - last, wallRay) ~= nil
	if tooFast or throughWall then -- impossible move: drop, rewind, log. Mild on purpose.
		for _, p in table.clone(carry.carriers) do release(p, nil) end
		root.CFrame = carry.lastGood
		root.AssemblyLinearVelocity = Vector3.zero
		ItemService.flag(root, if tooFast then "speed" else "wall")
		return
	end
	for _, p in table.clone(carry.carriers) do
		local hold = holdPoint(p)
		if not hold or (hold.WorldCFrame.Position - pos).Magnitude > C.maxTether then release(p, nil) end
	end
	carry.lastGood = root.CFrame
end

local CarryService = {}
function CarryService.init()
	Net.on("GrabItem", grab)
	Net.on("ReleaseItem", release)
	Players.PlayerRemoving:Connect(function(p) release(p, nil) end)
	Players.PlayerAdded:Connect(function(p)
		p.CharacterAdded:Connect(function(char)
			local hold = Instance.new("Attachment")
			hold.Name, hold.Position = "HoldAttachment", C.holdOffset -- e.g. (0, 0.5, -3.5)
			hold.Parent = char:WaitForChild("HumanoidRootPart")
		end)
	end)
	local acc = 0
	RunService.Heartbeat:Connect(function(dt)
		acc += dt
		if acc < 0.1 then return end
		for root, carry in carries do validate(root, carry, acc) end
		acc = 0
	end)
end
function CarryService.forceDrop(player: Player) release(player, nil) end -- ragdoll, NPC hit, death
function CarryService.setStructure(folder: Instance) wallRay.IncludeInstances = { folder } end
return CarryService
```

**Ragdoll.** The server calls `forceDrop` and fires `Ragdoll(seconds, impulse)`. The docs
require `Humanoid:ChangeState` to run on the owning client, so that client sets
`HumanoidStateType.Physics`. **Rec.:** the server toggles `Motor6D.Enabled` off and pre-built
`BallSocketConstraint`s on, so every client sees the same limbs. `AntiCheat` checks character
speed and teleports the same way.

**Alternative: Server Authority (Rec.: a week-one spike on the Run place only).**
`Workspace.AuthorityMode = Server` turns on its five prerequisites, predicts and rolls back
client physics, and rejects speed hacks in the engine. That could replace most of `validate`.
The costs: gameplay code moves to `RunService:BindToSimulation` and InputAction, server CPU
rises, and DevForum bug reports from Sept–Oct 2026 cover rollbacks and vehicle jitter. Adopt
it only if two-player carry feels right under Studio's network simulator.

### 10.8 Hazards and nuisances

The server owns the numbers; clients own the pixels. Hazard state replicates as Attributes
or events, and clients play the VFX. Roblox's perf guide says server-side TweenService
replicates every frame. So rising water is a level plus a rate: the server tests `y < level`
and clients tween the mesh.

**Collapse** runs deepest `Depth` first, which drives the retreat toward the truck. Each
section gets a 3 s `HazardTelegraph`, then its `Breakable`-tagged ceiling unanchors in a capped
wave. `GetPartBoundsInBox` with `OverlapParams.IncludeInstances` finds players to ragdoll and
items to damage. Water, power-out and gas are `Config/Modifiers` entries.

**NuisanceAI** is a data-driven state machine: Patrol, then Notice (0.6 s "!"), then Chase,
then Act, then Recover. A thrown item stuns from any state. The Act step differs per
nuisance: the raccoon steals and flees, the bot shoves into ragdoll, and the Landlord
possesses an item.

- A staggered Heartbeat ticks each NPC at 5–10 Hz.
- Each agent type gets one `PathfindingService:CreatePath({AgentRadius, AgentHeight, AgentCanJump = false, WaypointSpacing = 4, Costs})`.
- `ComputeAsync` runs at most every 0.75 s, and only after the target moves 6+ studs. It
  repaths on `Path.Blocked`, accepts `Success`/`ClosestNoPath`, and moves with
  `Humanoid:MoveTo`.
- Modules ship `PathfindingModifier`s (avoid gas) and `PathfindingLink`s (vents).
- Roots are server-owned.

Per Roblox's perf guide, disable unused states (`SetStateEnabled`), animate NPCs on the
client, and pool models. **Rec.:** 2–6 NPCs per run.

### 10.9 Quests, economy, UI, security, performance

- **Quests.** Definitions are data (`{id, kind, target, siteFilter, reward}`), driven by
  Signals. The board and weekly contracts are seeded from `os.time() // 604800`, so every
  server agrees with no shared state. Weekly contracts are the only Token source.
- **Economy.** EconomyService is the only writer of Cash and Tokens. Every grant or spend logs
  `AnalyticsService:LogEconomyEvent(player, Enum.AnalyticsEconomyFlowType.Source|Sink, "Cash", amount, endingBalance, Enum.AnalyticsEconomyTransactionType.Gameplay.Name, sku)`
  (limits: 5 currencies, 20 types, 100 SKUs).
  - **Sources:** run payout (Gameplay), quests (TimedReward), tutorial (Onboarding).
  - **Sinks:** tools and truck upgrades (Shop), museum slots, cosmetics (Tokens), and site
    permits consumed at run start, so a failed teleport needs no refund.
  - **Rec. payout:** banked value × site multiplier. 70% is split by carry distance and 30%
    is an equal crew bonus. Add a time bonus, plus 10% for friends
    (`Player:IsFriendsWithAsync`).
- **UI.** A client `Store` with `subscribe(selector, cb)`. Only controllers call `Net`.
  Components are ModuleScripts with `mount(parent, store) -> cleanup`; react-lua or Fusion are
  optional. Input uses one `InputAction` per verb, with `InputBinding`s for key, gamepad and
  an on-screen `UIButton`. `UserInputService.PreferredInput` picks the prompts.
- **Anti-exploit:**
  - Rewards come only from server-tracked deposits.
  - Every remote has a schema and a token bucket.
  - Range, tether, speed and wall checks.
  - No client-owned `Touched` logic and no `InvokeClient`.
  - Prices live server-side; the client sends a SKU only.
  - Session locks stop dupes.
  - Teleport data is a key only.
  - The Run place is set to "Secure within universe only".
  - A per-run Cash ceiling logs breaches via `LogCustomEvent`.
- **Streaming** (Roblox's recommended settings, set in Studio):
  - `ModelStreamingBehavior = Improved`
  - `StreamOutBehavior = Opportunistic`
  - `StreamingIntegrityMode = PauseOutsideLoadedArea`
  - `StreamingMinRadius` 64 and `StreamingTargetRadius` 1024 (the defaults)

  Valuables and the truck are Atomic; Roblox reserves Persistent for "very rare
  circumstances". Museums are built client-side from catalog data.
- **Rec. caps:** 60 valuables, 120 loose debris parts (`Debris:AddItem` after 8 s), and pools
  for debris, VFX and NPCs. **Rec. memory targets:** under about 800 MB client and 100 MB
  LuaHeap on low-end phones, and a flat server LuaHeap over a 1-hour soak.
- **Modularity.** A new site, item or nuisance is a config entry plus assets, checked by a
  startup validator and a test.

### 10.10 Teleport flow

**In the hub:**

1. `LaunchRun` checks that the caller leads, every member is here and ready, the site is
   unlocked, and a permit is owned.
2. `runId = HttpService:GenerateGUID(false)`. The ticket (siteId, seed, modifiers, quota,
   member userIds, configVersion, createdAt, and the VIP hub id if any) is written with
   `GetHashMap("Runs"):SetAsync(runId, ticket, 900)`.
3. `TeleportOptions.ReservedServerId = runId`, plus `SetTeleportData({ runId = runId })` as a
   key only (the docs say teleport data is client-visible and unencrypted). Then
   `TeleportService:TeleportAsync(RUN_PLACE_ID, members, options)` in the documented retry
   wrapper, retrying `Flooded`/`Failure` in `TeleportInitFailed`.

**In the run place:**

1. In production, `game.PrivateServerId` equals the requested `ReservedServerId`. Studio Test
   leaves it empty and Team Test may differ, so Studio alone falls back to
   `GetJoinData().TeleportData.runId`.
2. Validate:
   - `GetJoinData().SourcePlaceId == HUB_PLACE_ID` (the docs guarantee `SourcePlaceId`).
   - The player is on the ticket.
   - `game.PrivateServerOwnerId == 0`.
   - The ticket is under 15 minutes old.
   - The phase is still Loading or Briefing; otherwise send the player back.
   - The profile is loaded.
3. The first valid arrival calls `MatchService.start(ticket)`. Late joiners get the current
   phase.
4. Closing calls `TeleportAsync(HUB_PLACE_ID, players, opts)`, with `opts.VipServerId` set for
   private-server crews. The payout is already saved.

**Testing.** Since November 2026, Studio Test and Team Test run real `TeleportAsync`
(deprecated methods excluded), and Studio MCP playtests follow the teleport. Claude Code can
script "launch from hub, arrive, read console" end to end.

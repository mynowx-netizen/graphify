# Build prompt: CRUMBLE CREW (paste everything below into Claude Code)

---

You are the lead Roblox engineer and technical designer for **CRUMBLE CREW**, a new Roblox
game. You work in this repository with Claude Code, Roblox Studio (through the Roblox Studio
MCP server) and, optionally, Blender (through a Blender MCP server or the Blender CLI). Build
the game **phase by phase**, exactly as specified below.

At the end of every phase, **stop and report** using the format in section 15. Wait for my
approval before you start the next phase.

When this document doesn't answer a question, make the simplest choice that keeps the
invariants in section 2, write it down in `docs/DECISIONS.md`, and keep going. Ask me only
when you are truly blocked: something needs my account, my money, or a design choice that
changes the game's identity.

---

## 0. Ground rules for how you work

1. **Verify every Roblox API before you use it.** Fetch its reference page
   (`https://create.roblox.com/docs/reference/engine/classes/<Class>.md`) or read the Studio
   API, and never invent methods, properties or enums.
   - `TeleportService:ReserveServer` is deprecated. Use `TeleportService:TeleportAsync` with
     `TeleportOptions.ReservedServerId` set to `HttpService:GenerateGUID(false)`.
   - Never name a module `RunService`; that is an engine service.
2. **Every Luau file starts with `--!strict`.** Small, single-purpose ModuleScripts. No
   script over ~300 lines. No monolithic scripts. Only one `Script` per place (`Main.server.luau`)
   and one `LocalScript` (`Main.client.luau`) bootstrap everything.
3. **The server decides every outcome:** values, payouts, damage, collapse, rewards,
   purchases. The client only sends intents and renders. Never trust client-sent numbers,
   positions or prices.
4. **Every tunable number lives in `src/shared/Config/`.** Gameplay code reads config; it
   never hard-codes balance numbers.
5. **Done means:**
   - `selene src` passes, `stylua --check src` passes, and `luau-lsp analyze` has no errors;
   - Lune unit tests pass;
   - a Studio MCP playtest runs with **zero errors** in the console output;
   - you have looked at a screen capture of the feature on a phone-sized viewport.
   Never claim something works unless you ran it and saw it work. If you couldn't test
   something, say so plainly.
6. **Never publish the place, never press Publish/Save to Roblox, never spend Robux,** never
   create or change real game passes/products/badges, and never change Creator Hub settings.
   Prepare everything and give me a checklist instead. Product, pass and badge IDs stay `0`
   in config until I paste real ones; never invent IDs.
7. **Back up before destructive Studio edits:** clone what you replace into
   `ServerStorage.Backups.<Name>_<YYYY-MM-DD>`.
8. **Commit early and often** with clear messages (Conventional Commits). One feature per
   commit. Don't commit `Packages/`, `sourcemap.json` or `.rbxl` files.
9. Keep `docs/CHANGELOG.md` (player-facing) and `docs/DECISIONS.md` (engineering) up to date.

---

## 1. The game in one page

**Pitch:** *Grab the good stuff. Carry it out. The building won't wait.*
1–4 friends are a salvage crew sent into a condemned building that is collapsing. They have
6–10 minutes to carry its valuables to their truck before it falls. Heavy things need two
people, fragile things break when dropped, raccoons steal spoons, floors crack under you.
Every run is a different, randomly assembled building.

**Pillars (every feature must serve at least one):**

1. **Carrying is the fun.** Physical, wobbly, readable, funny. Two-person carries are the
   heart of the game.
2. **Every run is different.** Seeded room modules, item mixes, modifiers.
3. **Better with friends, fine alone.** Solo works (scaled quotas); friends multiply the fun.
4. **Fair and friendly.** No pay-to-win, no gambling for Robux, no deaths. Cartoon peril,
   Minimal/Mild maturity, ages ~10–24.
5. **Phone first.** It must feel great on a mid-range phone in landscape.

**Core loop:** Depot (hub) → pick contract → run (scout → grab → carry → dodge → load
truck → extract) → Haul Receipt (Cash, XP, Artifacts) → upgrade tools and truck, unlock
sites, fill the museum → repeat.

**Tone and look:** bright, chunky, stylized, readable; cartoon physics comedy; no gore, no
jump scares (except an opt-in seasonal "spooky" site later).

---

## 2. Non-negotiable invariants

- **No pay-to-win.** Robux never buy Cash, XP, luck, revives, collapse delays, skips, stat
  boosts or Artifacts.
- **No paid random items** of any kind. Artifacts are earned only, with odds shown in the
  catalog, and a pity counter.
- **No energy, no timers you pay to skip,** and no per-run entry fees. Sites unlock once,
  permanently.
- **No player death.** Players are "downed" and get up after 10 s or when revived.
- **Under 15 s from join to holding the first item** for brand-new players. No splash screen,
  no menu before play.
- **Server authority** on every reward. **Session-locked** player data. **Idempotent**
  purchases and payouts.
- **Accessible UI:** text size ≥ 9 at the smallest phone (aim ≥ 14), touch targets ≥ 44 px,
  rarity shown by colour **and** label, a reduce-shake setting.
- **Kid-safe:** no free-text input that other players see (use quick-chat and emotes only).
  All user-facing strings go through `TextService` filtering if text is ever added.

---

## 3. Tech setup (Phase 0, do this first)

### 3.1 Toolchain

Pin the tool versions in `rokit.toml`:

| Tool | Use |
|---|---|
| Rojo 7 | Syncs files into Studio |
| Wally | Packages |
| luau-lsp | Type checking |
| Selene | Lint (`std = "roblox"`) |
| StyLua | Format |
| Lune | Pure-module unit tests outside Studio |

Wally dev-dependency (optional): Jest Lua (`jsdotlua/jest-globals`) for in-Studio tests.
Vendor ProfileStore by loleris into `src/server/Vendor/ProfileStore.luau`, with its license
header kept.

### 3.2 Repository layout

```
crumble-crew/
  CLAUDE.md                 (you write this; see 3.4)
  rokit.toml  wally.toml  selene.toml  stylua.toml  .luaurc  .gitignore
  default.project.json      (single-place build for Phase 1–2)
  hub.project.json          (Phase 3+: Depot place)
  run.project.json          (Phase 3+: Run place)
  docs/  DESIGN.md (this file)  DECISIONS.md  CHANGELOG.md  STYLE.md  PLAYTEST.md
  art/   (Blender .blend sources, exported .fbx, style sheet)
  tests/ (Lune tests: *.spec.luau)
  src/
    shared/   → ReplicatedStorage.Shared
      Net.luau  NetSpec.luau  Guard.luau  Schema.luau  Signal.luau  ItemRegistry.luau  Types.luau
      Config/  Items.luau  Sites.luau  Rooms.luau  Carry.luau  Collapse.luau  Nuisances.luau
               Tools.luau  Truck.luau  Progression.luau  Contracts.luau  Modifiers.luau
               Artifacts.luau  Rarities.luau  Quests.luau  Prices.luau  Ui.luau  Perf.luau
      Pure/    Payout.luau  Odds.luau  TokenBucket.luau  Xp.luau  Quota.luau  GenGrid.luau  Condition.luau
    server/   → ServerScriptService.Server
      Main.server.luau      (the only Script: requires services, init() all, then start() all)
      Common/  DataService  EconomyService  InventoryService  MonetizationService
               AnalyticsWrap  LeaderboardService  TeleportFlow  AntiCheat  DevCommands
      Run/     MatchService  SiteGenerator  ItemService  CarryService  ToolService
               HazardService  CollapseService  NuisanceAI  ExtractionService  DownedService
      Hub/     PartyService  ContractBoard  QuestService  CatalogService  MuseumService  ShopService
      Vendor/  ProfileStore
    client/   → StarterPlayer.StarterPlayerScripts.Client
      Main.client.luau     (the only LocalScript)
      Store.luau           (client state store: get/set/subscribe(selector, cb))
      Common/  Input  Camera  Fx  Ragdoll  Sound  Hud/  Ui/ (components)
      Run/     CarryController  ToolController  HazardFx  ResultsScreen  Onboarding
      Hub/     PartyUi  ContractUi  ShopUi  MuseumUi  PhotoMode
```

- **Service contract:** every service module returns a table with `init()` (connects remotes
  and signals, never yields) and `start()` (may spawn loops).
- **Dependencies point one way:** place-specific → Common → Shared.
- **Services talk through `Signal`** events: `ItemDeposited`, `ItemBroken`, `RunCompleted`,
  `PlayerDowned`, `ArtifactFound`.

### 3.3 Studio world setup (apply with the Studio MCP)

**Workspace:**

| Property | Value |
|---|---|
| `StreamingEnabled` | true |
| `ModelStreamingBehavior` | Improved |
| `StreamOutBehavior` | Opportunistic |
| `StreamingIntegrityMode` | PauseOutsideLoadedArea |
| `StreamingMinRadius` | 64 |
| `StreamingTargetRadius` | 1024 |

Some of these may only be settable in Studio properties, not by script. If so, tell me
exactly which to set by hand.

**Other world setup:**

- `ServerStorage.Rooms` (room module templates), `ServerStorage.Items` (item templates),
  `ServerStorage.Nuisances`.
- `ReplicatedStorage.Assets` holds client-side VFX and sounds.
- Lighting: a bright stylized preset: `Future` or `ShadowMap` technology, soft Atmosphere,
  warm sun.

### 3.4 Write `CLAUDE.md` for this repo

It must contain:

- **The exact commands:**
  - `rokit install`, `wally install`
  - `rojo serve default.project.json`
  - `rojo sourcemap default.project.json --output sourcemap.json`
  - `selene src`, `stylua src`
  - `luau-lsp analyze --sourcemap sourcemap.json src`
  - `lune run tests`
- **The folder map** above.
- **The invariants** from section 2, plus "server decides", "numbers only in Config/",
  "remotes only via NetSpec", "no yields inside UpdateAsync transforms", and "never name a
  module RunService".
- **Recipes:** "add an item", "add a room module", "add a nuisance", "add a remote", "add a
  quest", "add a site".
- **Never edit:** `Packages/`, `sourcemap.json`.
- **The definition of Done** from section 0.

---

## 4. Phase 1: Prototype (goal: prove carrying out of a collapsing house is fun)

Build **only** this, in **one place**, with **greybox art** (Parts, simple colours). Players
2–4 per server, also playable solo.

### 4.1 The greybox house

- Hand-build one house (no generator yet): a two-storey, 64×48-stud footprint with 6 rooms
  (hall, lounge, kitchen, study, bedroom, attic).
- One staircase, two doors to the outside.
- The truck parks outside the front door. Its truck bed is a `Part` named `TruckBed` (14×6×8
  studs), tagged `TruckZone` via `CollectionService`.
- Mark 3 floor sections and 2 ceiling sections as collapsible: Models tagged `Collapsible`
  with an attribute `CollapseAt` (integrity % at which they fall: 75, 50, 50, 25, 10).

### 4.2 Valuables (Phase 1 uses 6 of the Mansion items from section 11.1)

Vase, Silver Spoon, Picture Frame (Light); Grandfather Clock, Antique Desk (Heavy); Grand
Piano (Huge).

The piano is deliberately too heavy for 2 players. It tests drag mode and teaches that some
items need a bigger crew or a tool.

Each item is a Model whose PrimaryPart is the physics root. It is unanchored and
`CanCollide = true`. Its server-set attributes:

| Attribute | Type |
|---|---|
| `ItemId` | string |
| `Uid` | string (GUID) |
| `BaseValue` | number |
| `Condition` | 0–1, starts at 1 |
| `Weight` | number, in weight units, NOT physics mass |
| `Fragility` | 0–1 |
| `Rarity` | string |
| `CarriedBy` | comma-separated userIds; display only |

Clients read attributes to show tooltips and value. Clients never write them.

### 4.3 Carry system (CarryService server + CarryController client); the core of the game

**Grab:**
1. The client sends `GrabItem(uid)` when the player presses Grab on a highlighted item
   within `Carry.grabRange = 8` studs. The highlight comes from a `Highlight` object on the
   nearest grabbable item in front of the camera.
2. The server validates: the player is alive and not downed, not already carrying, within
   `grabRange + 1.5`, and has line of sight (a Raycast from head to item ignoring characters).

**Ownership:**
- Free items are owned by the **server** (`SetNetworkOwner(nil)`).
- The first carrier gets network ownership (`SetNetworkOwner(player)`), so it moves with no
  input lag.
- The item is held at a `HoldAttachment` 4 studs in front of and 1 stud below the head
  (create it on character spawn).
- Held items use `AlignPosition` (`Responsiveness = 25`, `MaxForce = AssemblyMass *
  workspace.Gravity * 1.6`) plus `AlignOrientation` (`Responsiveness = 18`). Both
  constraints are created by the server.

**Weight rules (weight units):**

| Class | Weight | Carriers needed to lift | Notes |
|---|---|---|---|
| Light | 1–10 | 1 | Can be thrown |
| Heavy | 11–30 | 2 | 1 carrier = drag mode |
| Huge | 31–45 | 3 | |
| Huge | 46–60 | 4 (or a Dolly user plus helpers) | |

- **Lift capacity:** each carrier adds `Carry.liftPerPlayer = 15` weight units. A carrier
  using a Dolly adds the Dolly's `maxWeight` instead (tier I: 40).
- An item lifts when the group's total lift capacity is ≥ its Weight. Examples:
  - Grand Piano, 55: 4 players, or Dolly I + 1 helper.
- **Drag mode:** if lift capacity is below the item's weight, the item can't rise. Instead it
  drags along the ground at `Carry.dragSpeedFactor = 0.4` of walk speed. Fragile items take
  scrape damage `Carry.scrapeDps = 0.04 × Fragility` condition per second while dragged.
- **Two-player carry:** a second player grabbing an already-held item adds their own
  `AlignPosition` toward their `HoldAttachment`, so the item settles between them. The lead
  carrier keeps network ownership. If the carriers get more than `Carry.maxTether = 10` studs
  from the item, the farthest carrier lets go automatically.
- **Walk speed while carrying:**
  `16 × clamp(1 − shareOfWeight / Carry.slowWeight(=40), Carry.minSpeedFactor(=0.45), 1)`,
  where `shareOfWeight = item.Weight / carriers`. Restore 16 on release.
- **Release:**
  - `ReleaseItem(throwDir?)` drops the item; throwing works for Light items only.
  - On release, ownership returns to the server **first**. Then, for a throw, the server
    applies `ApplyImpulse(throwDir × AssemblyMass × 42 + Vector3.yAxis × AssemblyMass × 12)`.
  - Validate that `throwDir` is a finite unit vector.
- **Server validation at 10 Hz for every carried item:**
  - The item's speed is under `Carry.maxItemSpeed = 60` studs/s while held.
  - It hasn't moved more than `Carry.maxStepDist = 12` studs between checks.
  - It is within `maxTether` of a carrier.
  - A raycast from the carrier to the item doesn't pass through walls tagged `Structure`.
  - **On any failure:** force-release, put the item back at its last good CFrame, server
    owns it, and send `AntiCheat.flag(player, reason)`. Three flags in 60 s kicks the player
    with a friendly message.

**Feel targets:** carried items wobble slightly, never jitter, and never clip through
doorframes at walking speed. Two-person carries look like both players are holding it.
Tune `Responsiveness` to get there, then write the final values to `Config/Carry.luau`.

### 4.4 Fragility and condition (Pure/Condition.luau, unit tested)

- **Hard impact:** an item's velocity change in one physics step is more than
  `Condition.impactSpeed = 25` studs/s. Detect it on the server by sampling
  `AssemblyLinearVelocity` at 20 Hz for items not currently held, plus on release.
- **Damage:** `severity = clamp((dv − 25) / 35, 0, 1)` and
  `condition −= Fragility × severity × 0.6`.
- **Breaking:** if `Condition < 0.2`, the item breaks. Send the `ItemBreakFx` effect,
  destroy the model (pooled shards for 3 s), and fire `Signal ItemBroken`. Its value is lost.
- **Current value:** `floor(BaseValue × Condition)`.

### 4.5 Truck, quota and integrity

- **Deposit:** an item deposits when its PrimaryPart has been inside a `TruckZone` box (server
  `GetPartBoundsInBox`, 4 Hz) for 0.5 s and no one is holding it.
- On deposit: lock the item (anchor it, move it to the truck bed stack), add its current value
  to `banked`, and fire `ItemDeposited(uid, player, value)`. **Credit** goes to the last
  player who held it, and to both players if it was a two-person carry.
- **Quota:** Phase 1 uses a fixed 2,500.
- The HUD shows `banked / quota`, building integrity %, and the time left.
- **Building integrity** goes from 100 to 0 over `Collapse.duration = 360` s (Phase 1). At
  each collapsible's `CollapseAt`:
  1. **Telegraph for 3 s:** crack decal, dust particles, and a creak sound sent via
     `HazardTelegraph`. Show the area as a red outline on clients.
  2. **Fall:** unanchor with a small random impulse.
  3. **Clean up:** debris is added to `Debris` with an 8 s lifetime.
- **At integrity 10%:** play an alarm and show "GET OUT!".
- **At 0%:**
  1. The whole house "settles": anchor and tween the parts down; the full collapse sequence
     comes later.
  2. Every player still inside is "rescued by Gus": teleport them outside and down them for
     3 s.
  3. Carried items are lost.
  4. The run ends.
- **Extract early:** every player standing in the `ExitZone` near the truck, while the quota
  is met, and holding the Extract button (all players, 2 s) ends the run with a time bonus.

### 4.6 Downed and ragdoll

- **A player is downed when:**
  - hit by falling debris with a relative speed over 30;
  - falling more than 20 studs;
  - (Phase 2) hit by a nuisance.
- **Ragdoll:**
  1. The server sets an attribute and the client swaps `Motor6D`s for `BallSocketConstraint`s
     on R15. Use a well-known ragdoll approach and verify it.
  2. Set `Humanoid.PlatformStand = true` (verify the API).
  3. Get up after 1.5 s unless downed.
- **Downed:** the player drops what they carry, crawls at speed 4, and gets up after 10 s.
  A teammate holding Interact on them for 3 s revives them instantly.
- **Nobody dies.** Override `Humanoid` death: keep health above 0, or set `BreakJointsOnDeath`
  false and handle it. Pick one and document it.

### 4.7 Minimal HUD and input (phone first)

- **Top centre:** quota bar (`$banked / $quota`) and an integrity bar (cracks as it drops)
  with the timer.
- **Bottom right (thumb):** one big context button:
  - **GRAB** when near an item;
  - **DROP** / **THROW** (hold to throw, Light items) while carrying;
  - **REVIVE** near a downed teammate.
- **Bottom right, smaller:** EXTRACT (only in the exit zone with the quota met).
- **PC:** E grab/drop, left click throw, F revive, X extract.
- **Gamepad:** ButtonX grab/drop, R2 throw, ButtonY revive.
- Use the input action system (`InputAction`/`InputBinding`) if available in the current
  engine (verify it in the docs); otherwise use `ContextActionService`.
- **Show:** an item tooltip on highlight (name, value, weight icon 1–3, a crack icon if
  fragile) and a floating "+$value" when an item is deposited.

### 4.8 Haul Receipt (end of run)

- **Contents:**
  - total banked, quota met yes/no, time left;
  - per-player carried value;
  - items broken;
  - "Funniest stat": e.g. "Piano dropped 3 times", "Spoons stolen: 0".
- **Buttons:** **PLAY AGAIN** (the biggest; same crew, new run) and RETURN.

### 4.9 Phase 1 acceptance tests (you must run these)

1. **Lune:** `Condition`, `Payout` (Phase 1: banked only), `TokenBucket`; all pass.
2. **MCP playtest with 2 players** (Studio local server with 2 clients if available,
   otherwise a solo test plus `DevCommands` simulating a second carrier). Verify:
   - grab and release; carrying a Heavy item solo drags it;
   - a two-person carry lifts it;
   - throwing a Light item;
   - a fragile Vase breaks after a 2-storey drop;
   - deposit counts once only;
   - a collapse telegraph then a fall;
   - downed, then revive;
   - the run ends at 0% and on extract.
3. **Console:** 0 errors over a 6-minute run.
4. **Screen capture** at a phone-landscape viewport (around 844×390): every HUD element
   readable, nothing clipped.
5. **Exploit tests via `DevCommands`:**
   - send `GrabItem` for an item 50 studs away (must be rejected);
   - teleport a carried item 30 studs (must be snapped back and flagged).

**Do NOT build in Phase 1:** saving, shop, progression, more items, the room generator, the
hub, teleports, nuisances, final art, sound polish, monetization.

**End Phase 1 with a playtest guide** in `docs/PLAYTEST.md` for me to run with 5 people.
It needs the questions to ask and what to watch for: do they laugh, do they replay without
being told?

---

## 5. Phase 2: Vertical slice (Grandma's Mansion at near-final quality)

### 5.1 Seeded room generator (SiteGenerator + Pure/GenGrid.luau)

**Room modules:**
- Models in `ServerStorage.Rooms.<SiteId>`.
- The grid cell is 32×32 studs and the floor height 16 studs. Modules occupy 1×1, 1×2 or 2×2
  cells.
- `PrimaryPart` is named `Origin`, placed at the cell's minimum corner, at floor level.

**Module attributes:**

| Attribute | Value |
|---|---|
| `Size` | "1x1" / "1x2" / "2x2" |
| `Tags` | comma list: Start, Hall, Room, Stair, DeadEnd, SetPiece |
| `Weight` | spawn weight |
| `MinCount` / `MaxCount` | per building |
| `Floors` | 1, or 2 for stairs |

**Inside each module:**
- **Door sockets:** Attachments named `Door_N`, `Door_E`, `Door_S`, `Door_W`, with an
  optional index for 2-cell sides (`Door_N1`, `Door_N2`).
- **Item spawn points:** Attachments named `Spawn_Light`, `Spawn_Heavy`, `Spawn_Huge`.
- **Hazard anchors:** Attachments named `Hazard_<Kind>`.
- **Collapsible sections:** sub-Models tagged `Collapsible` with an attribute
  `CollapseGroup` (1–4).

**Generator (deterministic; same seed = same building, unit-tested in Lune via GenGrid):**
1. `local rng = Random.new(seed)`. Grid 6×6 per floor, 2 floors (Large: 3 floors).
2. Place the `Start` module touching the south edge (the truck and exit are outside it).
3. Grow by repeatedly picking an open door socket (random) and placing a weighted-random
   module that fits and has a matching opposite door, until `targetRooms` is reached.
   Contract size sets the target: Small 8, Medium 12, Large 16.
4. Guarantee a `Stair` module connects floors, and at least 1 `SetPiece` on Medium and Large.
5. Cap unused door sockets with a wall piece (`WallCap` template).
6. **Collapse order:** compute the BFS distance from Start. Collapse groups fall
   **far-to-near**, so the building crumbles toward the exit and players race out.
   `CollapseAt` per group comes from `Config/Collapse.luau`.
7. **Items:**
   - Fill spawn points by class from the site's item table (section 11.1), weighted by
     rarity and depth: rarer items spawn farther from the entrance.
   - The total spawned value is about `quota × 1.6`, so the crew must choose.
   - No more than `Perf.maxValuables = 60` items.
8. **Validate:** every room is reachable (BFS over door links), and there are no overlapping
   cells. If validation fails, retry with `seed + 1` (at most 5 tries) and log it.
- **Pure split:** `GenGrid` does the logic only (grid, sockets, picks) and returns a plan
  table. `SiteGenerator` instantiates the plan.
- **Performance:** generation must take < 1 s on the server for Large. Measure with
  `os.clock()` and report it.

### 5.2 Mansion content

**15 room modules:**
- Start Hall (2x2)
- Lounge, Kitchen, Dining Room, Study, Bedroom, Bathroom, Nursery (1x1 each)
- Library (1x2), Gallery Corridor (1x2)
- Staircase (1x1, 2 floors)
- Attic Nook (1x1, DeadEnd)
- Conservatory (2x2, SetPiece)
- Wine Cellar (1x1)
- Ballroom (2x2, SetPiece, chandelier)

Build them in Studio as greybox first, then dress them (see section 13).

**Items:** all 40 Mansion items from section 11.1.

**Two nuisances (`NuisanceAI`, server state machines, `PathfindingService`):**

**Raccoon Gang** (1 per 4 rooms, max 4 per building):
- **States:** Wander, then Target (the nearest unheld Light item under 150 value within 30
  studs), then Steal (grab it: weld it to the raccoon), then Flee (path to the nearest
  `Hazard_Vent` anchor), then Escape (despawn with the item; that value is lost).
- A player can **interrupt** by touching the raccoon while it is stealing or fleeing, or by
  throwing an item that hits it. It drops the item, gets stunned for 2 s, then returns to
  Wander.
- **Speed:** 14 (players walk 16). Telegraph with a chitter sound.
- It never targets held items.

**Roomba-Bot** (1 per 6 rooms):
- **States:** Patrol (random waypoints in its room), Bump (if a carrier is within 3 studs:
  move toward their feet, speed 10).
- On contact with a carrier holding a fragile item: the item takes a severity-0.5 impact.
  The player stumbles (speed ×0.5 for 1 s) but is not downed.
- A player can **jump on it** to stop it for 8 s.

**AI rules:**
- AI runs at 10 Hz on the server.
- The server moves the AI with `Humanoid:MoveTo` or a `LinearVelocity` controller. Choose
  one and document why.
- **Cap:** no more than 8 nuisances per building.
- Pool and reuse nuisance models.

### 5.3 Onboarding (first-time players only: `meta.tutorialStep < 99`)

| Time | What happens |
|---|---|
| 0:00 | Spawn inside the Mansion Start Hall, **already holding the Vase**. Gus (voice line + subtitle): "Truck's outside, rookie. Go go go!" A floor arrow (Beam) points to the truck |
| ~0:15 | Deposit: big "+$120", confetti, a sound |
| 0:20 | Arrow to the Grandfather Clock: "Too heavy for one. Grab the other end!" |
| — | If solo, a helper bot "Gus Jr." (simple server NPC carrier) takes the other end |
| ~1:10 | A scripted ceiling crack behind them: "MOVE!"; a short collapse |
| ~1:30 | Extract prompt; first Haul Receipt |
| ~2:00 | Depot (Phase 3) or the next run (Phase 2): the free Dolly is granted, then "Invite a friend" |

**Funnel:** log each step with `AnalyticsService:LogOnboardingFunnelStepEvent(player, step,
name)` on the **server**:
1. Joined
2. HoldingFirstItem
3. FirstDeposit
4. DuoCarry
5. FirstCollapseSeen
6. FirstExtract
7. SecondRunStarted
8. FirstArtifactPlaced (Phase 3)

### 5.4 Juice and audio

- **Grab:** a squash tween on the item and a pickup sound with random pitch (0.9–1.1).
- **Carry:** a heavy-carry strain meter UI and footstep weight sounds.
- **Impacts:** sounds by material, plus a red flash and "-$X" when a fragile item takes damage.
- **Deposit:** "+$X" pop (BillboardGui tween up and fade), coin sound, and the truck
  suspension dips a little.
- **Collapse:** creak, crack decals, dust, a short camera shake (off when reduce-shake is on),
  and rumble.
- **Receipt:** count-up numbers and stamp animations.
- **Effects:** all effects are client-side, driven by remotes and `UnreliableRemoteEvent` for
  cosmetic effects. Respect `GuiService.ReducedMotionEnabled`.

### 5.5 Saving (minimal)

- Integrate ProfileStore with `Schema` v1 (Cash, XP, crewLevel, tutorialStep, stats).
- Use `store.Mock` in Studio.
- Auto-save is handled by ProfileStore; release the profile on `PlayerRemoving` and
  `BindToClose`.

### 5.6 Phase 2 acceptance

- 20 seeds generate valid buildings. A Lune test checks connectivity and determinism, and
  that generation is < 1 s.
- The onboarding script runs start to finish solo, with the bot, in an MCP playtest.
- 60 fps on the Studio Device Emulator mid-phone profile is the goal. Report the
  MicroProfiler or render stats you can read: draw calls, triangle count, Lua heap.
- Raccoon and Roomba behave as specced, as checked through `DevCommands` scenarios.
- Screen captures: the HUD at phone width, the receipt, an item tooltip.
- **Do NOT build in Phase 2:** hub, teleports, shop, museum, other sites, Crew Pass, trading,
  PvP.

---

## 6. Phase 3: Alpha (the full loop)

### 6.1 Two places, one universe

- **Depot (hub):** 24 players.
- **Run:** reserved servers, 1–4 players.
- **Teleport flow (TeleportFlow):**
  1. **Party.** A party forms on the party pad or by invite (`SocialService:PromptGameInvite`
     with launch data `{partyId=…}`, read via `Player:GetJoinData()`). The leader picks a
     contract and presses LAUNCH.
  2. **Validate in the Depot:** the caller is the leader, every member is in this server and
     ready, the site is unlocked for the leader, and the truck tier meets the contract.
  3. **Ticket.** Create `runId = HttpService:GenerateGUID(false)`. Write the ticket to a
     MemoryStore HashMap `Runs` (TTL 900 s) with `{siteId, seed, size, modifiers, quota,
     memberUserIds, configVersion, createdAt, hubJobId}`.
  4. **Teleport.** Set `TeleportOptions.ReservedServerId = runId` and
     `SetTeleportData({runId = runId})` (a key only; never trust it). Call
     `TeleportService:TeleportAsync(RUN_PLACE_ID, members, options)` with retry on
     `TeleportInitFailed` (Flooded/Failure: backoff 2/4/8 s).
  5. **Run place.** `runId = game.PrivateServerId` in production. Use the TeleportData
     fallback in Studio only.
  6. **Validate in the Run place:** `GetJoinData().SourcePlaceId == HUB_PLACE_ID`, the player
     is in the ticket, the ticket is fresh, and `game.PrivateServerOwnerId == 0`.
  7. **Return.** When the run ends, teleport everyone back to the Depot (a public server, or
     try the same `hubJobId` via `TeleportOptions.ServerInstanceId` if it's still alive;
     verify the API).
- **Matchmaking:** "Find Crew" uses a MemoryStore SortedMap queue keyed by contract tier.
  Form groups of up to 4 within 20 s; otherwise launch with whoever is there.

### 6.2 Full player data

Implement the Schema in section 12.3 with migrations, `runLedger` (idempotent payouts keyed
by `runId`) and `purchaseIds` (idempotent receipts).

### 6.3 Progression systems

Tools, truck, Crew Level, perks, site unlocks, contracts and modifiers: exact numbers are in
sections 11.2–11.7.

### 6.4 Sites 2–3: Sinking Cruise Ship and Toy Factory

**Each site:** 12–15 room modules, 40 items, 2 site nuisances, 1 site hazard.

**Sinking Cruise Ship:**
- **Hazard:** the deck tilts. Gravity is unchanged, so rotate the building model slowly with
  a server-side `TweenService` CFrame; verify that physics stays stable. Fall back to scripted
  slope zones if unstable.
- **Hazard:** the water level rises one deck per collapse phase. Water is a non-colliding
  part with buoyancy zones and a slow-walk debuff.
- **Nuisances:** Seagulls (steal Light items, fly), Crabs (Roomba-like pinchers).

**Toy Factory:**
- **Hazards:** conveyor belts (surface velocity), crushers (telegraphed stomp; downed on hit).
- **Nuisances:** Gremlins (steal tools from belts, untie ropes), Wind-up Soldiers
  (patrol and bump).

**Large-contract boss finales** (at 15% integrity, a Jackpot item worth 25% of the quota
spawns in the farthest room):
- **Mansion: Wrecking Ball.** Telegraphed swing lanes through walls every 6 s.
- **Ship: Kraken Arms.** Sweeps across marked deck lanes, plus ink that blinds 2 s.
- **Factory: Robo-Foreman.** Stomp shockwave rings (jump them); conveyors reverse.

### 6.5 Artifacts, Catalog and Museum

- **Sources:** containers (Safe, Locked Chest, Display Case) need a Crowbar (or 6 s of
  bare-hands prying).
- **Rolls:** opening one rolls on the server with `Pure/Odds.luau` (section 11.8).
- **Physical:** the Artifact spawns as a physical item that must be carried out. Artifacts
  are unbreakable but can be stolen by nuisances.
- **On deposit:**
  - add it to `artifacts[id]` (count, firstAt, bestCondition);
  - the pity counter resets;
  - show the reveal UI (odds visible);
  - `ArtifactFound`.
- **Museum:** each player owns a museum room (instanced client-side from data; visitors
  load the owner's layout from a `GetMuseum(userId)` server call). Players place artifacts
  on plinths (`museum.capacity`, 12 base).
- **Likes:** visitors can Like (one per visitor per owner per ISO week, stored server-side
  in an OrderedDataStore `MuseumLikes_<weekKey>`).
- **Spotlight:** the weekly top 10 are shown on the Depot wall.

### 6.6 Quests and achievements

- **Daily:** 3 from `Config/Quests.luau`, seeded by `os.time() // 86400`.
- **Weekly:** 7, seeded by `os.time() // 604800`. Weekly quests are the main Token source.
- **Examples:** haul 5 fragile items above 90% condition; perform a duo carry of a Heavy
  item; revive a crewmate; extract with 60 s left; stop a raccoon theft.
- **Badges:** First Haul, Two's Company, Not a Scratch, Clutch, Hoarder, Curator, one per boss.
  Badge IDs stay `0` until I create them.

### 6.7 Leaderboards

OrderedDataStore boards, each with a friends filter in the UI:
- Best single haul per site.
- Fastest quota-met time per contract size.
- Weekly total haul (key per weekKey).
- Museum likes weekly.

### 6.8 Shop, monetization and receipts

- Every SKU is in `Config/Prices.luau` (section 11.9) with `id = 0` until I provide it.
- **Prices:** read with `MarketplaceService:GetProductInfoAsync` (cache it). Show a
  strike-through only when `UserBasePriceInRobux > PriceInRobux`.
- **ProcessReceipt:** follow Roblox's official pattern. Grant inside the session-locked
  profile, record `PurchaseId` in `purchaseIds`, and only then return `PurchaseGranted`.
- **Passes:** check `MarketplaceService:UserOwnsGamePassAsync` on join (cached) and react to
  `PromptGamePassPurchaseFinished`.
- **Shop UI rules:** one hero offer, the same card layout for every item, one honest value
  line per item, the price button in the same spot, and OWNED state. No "GET IT NOW"
  language and no fake timers.

### 6.9 Tuning with Configs and Experiments

- Expose quota multipliers, payout multipliers, artifact base chance, nuisance density and XP
  curve constants through `ConfigService:GetConfigForPlayerAsync(player)`, with the Config
  defaults as fallback. Verify the API.
- Use `AnalyticsService:LogEconomyEvent` for every Cash/Token source and sink (verify the
  enum names), and `LogCustomEvent` for run outcomes.

### 6.10 Phase 3 acceptance

- A full loop in an MCP playtest: Depot → party → teleport → run → return → upgrade → unlock
  Ship.
- If teleports can't be tested in your Studio setup, test both places separately and tell me
  what remains untested.
- **Idempotency tests:**
  - a duplicate payout with the same `runId` pays once;
  - a duplicate receipt with the same `PurchaseId` grants once;
  - a profile-lock handoff between hub and run has no data loss.
- **Economy pace sim:** a Lune script runs a simulated player through 50 runs, using the
  config payout and price curves.
  - Report: when the first tool upgrade, site 2 and truck III unlock.
  - Targets: after run 2, ~45–60 min, ~8–10 h of play.

---

## 7. Phase 4: Beta checklist

- Fix the top 3 funnel drop-offs, crashes and exploit reports.
- Performance pass on a low-end phone profile: streaming, pooling, `CastShadow` off on small
  props, `CollisionFidelity = Box` for small anchored props, and `RenderFidelity` Automatic.
- Thumbnails (3–5), icons (2) and description draft: honest, showing real gameplay. Give me
  the files and text; I upload them.
- Write `docs/LAUNCH_CHECKLIST.md` with everything I must do in Creator Hub:
  - products and passes to create (names, prices, descriptions);
  - badges;
  - places;
  - the Run place's teleport security setting;
  - audience settings;
  - experience notifications template;
  - thumbnail personalization.

## 8. Phase 5: Launch (prepare; I publish)

- Site 4 (Museum After Hours) built with the same pipeline.
- A launch event config (weekend Double Artifact Luck, free for all players).
- The Crew Pass Season 1 track: 30 tiers, cosmetics and Tokens only. Buying mid-season grants
  the tiers already reached.

## 9. Phase 6: Live-ops hooks (build the plumbing, not the content)

Everything below is data-driven so that an update is a config change plus assets:

- weekly Inspector contract (fixed seed per week, global leaderboard);
- modifier rotation;
- community goals (a MemoryStore counter with a global target);
- seasonal site toggle;
- an event calendar in `Config/Events.luau` with UTC start/end.

---

## 10. Networking spec (Shared/Net.luau + NetSpec.luau)

- **One `Net` module** creates all remotes on the server under `ReplicatedStorage.Remotes`
  and hands typed wrappers to both sides.
- **Every C→S remote** has an argument schema (Guard checks) and a token-bucket rate limit.
  - Invalid payloads are dropped and logged with `AntiCheat.strike`.
  - Three strikes in 60 s kicks the player.
- **`RemoteFunction`s** are client→server only. **Never use `InvokeClient`.**

| Remote | Dir | Payload | Rate (per s, burst) |
|---|---|---|---|
| GrabItem | C→S | uid: string(≤40) | 4, 6 |
| ReleaseItem | C→S | throwDir: unit Vector3? | 4, 6 |
| UseTool | C→S | toolId: string(≤20), targetUid: string? | 3, 5 |
| Revive | C→S | targetUserId: int | 2, 3 |
| Extract | C→S | holding: boolean | 2, 4 |
| Emote / QuickChat | C→S | id: string(≤20) | 1, 3 |
| EquipLoadout | C→S | slot: int(1–4), toolIds: {string}≤4 | 1, 2 |
| PartyInvite / PartyRespond / PartyLeave / PartyReady | C→S | userId / partyId, accept / — / ready | 1, 3 |
| SelectContract / LaunchRun / FindCrew | Fn C→S | contractId / — / tier | 0.5, 2 |
| BuyUpgrade / BuyCosmetic | Fn C→S | sku: string | 1, 2 |
| MuseumPlace / MuseumVisit / MuseumLike | Fn C→S | slot, artifactId / ownerUserId / ownerUserId | 1, 3 |
| ClaimQuest / ClaimPassTier | Fn C→S | questId / tier, track | 1, 3 |
| DataSnapshot / DataChanged | S→C | profile view / path, value | — |
| PhaseChanged / QuotaChanged / IntegrityChanged | S→C | phase, endsAt / banked, quota / pct | — |
| HazardTelegraph | S→C | kind, cframe, size, impactAt | — |
| Downed / Ragdoll | S→C | userId, untilAt / secs, impulse | — |
| PayoutSummary / ArtifactRevealed / Notify | S→C | breakdown / id, rarity, odds / key, args | — |
| PlayFx / ItemImpactFx / DepositFx | Unreliable S→C | fxId, pos / uid, intensity / uid, value | — |

Item state (value, condition, carriers) replicates through **Attributes**, not remotes.

---

## 11. Config reference (put these in `src/shared/Config/` exactly; tune later)

### 11.1 Items: Grandma's Mansion (40)

The `w` column is weight units. Classes: L = Light 1–10 (1 carrier), H = Heavy 11–30
(2 carriers), X = Huge 31–60 (3–4 carriers, or a Dolly plus helpers).
`frag` is Fragility. Rarity weights the spawn: Common 60, Uncommon 25, Rare 11, Epic 4.

```lua
-- Config/Items.luau (excerpt format; one entry per item)
-- [id] = { name, site, class, value, weight, fragility, rarity, size = Vector3 (studs), special? }
mansion_vase          = { "Vase",              "mansion", "L", 120,  4, 0.50, "Common",   Vector3.new(1.4,2.2,1.4) },
mansion_candlestick   = { "Candlestick",       "mansion", "L",  40,  2, 0.00, "Common",   Vector3.new(0.6,2,0.6) },
mansion_teacups       = { "Teacup Set",        "mansion", "L",  90,  3, 0.80, "Common",   Vector3.new(1.6,0.8,1.2) },
mansion_frame         = { "Picture Frame",     "mansion", "L",  60,  3, 0.30, "Common",   Vector3.new(2,2.6,0.3) },
mansion_jewelrybox    = { "Jewelry Box",       "mansion", "L", 250,  3, 0.20, "Uncommon", Vector3.new(1.2,0.8,0.9) },
mansion_spoon         = { "Silver Spoon",      "mansion", "L",  30,  1, 0.00, "Common",   Vector3.new(0.3,0.1,1.2) },
mansion_pocketwatch   = { "Pocket Watch",      "mansion", "L", 180,  1, 0.40, "Uncommon", Vector3.new(0.6,0.2,0.6) },
mansion_doll          = { "Porcelain Doll",    "mansion", "L", 150,  3, 0.70, "Common",   Vector3.new(0.8,1.8,0.6) },
mansion_snowglobe     = { "Snow Globe",        "mansion", "L", 110,  2, 0.90, "Common",   Vector3.new(0.8,0.9,0.8) },
mansion_book          = { "Old Book",          "mansion", "L",  50,  2, 0.10, "Common",   Vector3.new(1,1.4,0.4) },
mansion_recordplayer  = { "Record Player",     "mansion", "L", 200,  8, 0.40, "Uncommon", Vector3.new(2,1,1.6) },
mansion_decanter      = { "Crystal Decanter",  "mansion", "L", 220,  3, 0.90, "Uncommon", Vector3.new(0.7,1.4,0.7) },
mansion_telescope     = { "Brass Telescope",   "mansion", "L", 300,  6, 0.30, "Rare",     Vector3.new(0.6,0.6,3) },
mansion_musicbox      = { "Music Box",         "mansion", "L", 260,  2, 0.50, "Uncommon", Vector3.new(1,0.7,0.8) },
mansion_lamp          = { "Table Lamp",        "mansion", "L",  70,  4, 0.50, "Common",   Vector3.new(1.2,2.4,1.2) },
mansion_wallclock     = { "Wall Clock",        "mansion", "L", 140,  4, 0.40, "Common",   Vector3.new(1.8,1.8,0.4) },
mansion_catstatue     = { "Cat Statue",        "mansion", "L",  90,  7, 0.30, "Common",   Vector3.new(0.9,1.6,1.2) },
mansion_ducks         = { "Rubber Duck Crate", "mansion", "L",  25,  5, 0.00, "Common",   Vector3.new(1.6,1,1.2) },
mansion_goldbar       = { "Gold Bar",          "mansion", "L", 800, 10, 0.00, "Rare",     Vector3.new(1,0.4,0.5) },
mansion_grandfather   = { "Grandfather Clock", "mansion", "H", 600, 22, 0.40, "Uncommon", Vector3.new(2,7,1.4) },
mansion_armchair      = { "Armchair",          "mansion", "H", 180, 16, 0.10, "Common",   Vector3.new(3,3.4,3) },
mansion_desk          = { "Antique Desk",      "mansion", "H", 450, 26, 0.20, "Uncommon", Vector3.new(5,3,2.6) },
mansion_bookcase      = { "Bookcase",          "mansion", "H", 300, 28, 0.20, "Common",   Vector3.new(4,7,1.4) },
mansion_painting      = { "Grand Painting",    "mansion", "H", 700, 14, 0.50, "Rare",     Vector3.new(6,4,0.4) },
mansion_armour        = { "Suit of Armour",    "mansion", "H", 550, 24, 0.20, "Uncommon", Vector3.new(2,6.5,1.6) },
mansion_mirror        = { "Gilded Mirror",     "mansion", "H", 400, 15, 0.90, "Uncommon", Vector3.new(3,5,0.3) },
mansion_drawers       = { "Chest of Drawers",  "mansion", "H", 260, 20, 0.20, "Common",   Vector3.new(3.4,3.6,1.8) },
mansion_sculpture     = { "Marble Sculpture",  "mansion", "H", 650, 25, 0.60, "Rare",     Vector3.new(1.6,4,1.6) },
mansion_globebar      = { "Globe Bar",         "mansion", "H", 380, 18, 0.60, "Uncommon", Vector3.new(2.6,3.4,2.6) },
mansion_tv            = { "Old Television",    "mansion", "H", 160, 12, 0.60, "Common",   Vector3.new(2.4,2,2) },
mansion_rockinghorse  = { "Rocking Horse",     "mansion", "H", 220, 13, 0.30, "Common",   Vector3.new(3.4,3,1.2) },
mansion_piano         = { "Grand Piano",       "mansion", "X",1800, 55, 0.30, "Epic",     Vector3.new(5,3.4,6.5) },
mansion_chandelier    = { "Crystal Chandelier","mansion", "X",1500, 34, 0.80, "Epic",     Vector3.new(4,3.6,4), special = "FallsFromCeiling" },
mansion_safe          = { "Old Safe",          "mansion", "X",1200, 45, 0.00, "Rare",     Vector3.new(2.4,3,2.4), special = "Container" },
mansion_bed           = { "Four-Poster Bed",   "mansion", "X", 500, 40, 0.10, "Common",   Vector3.new(5,6,7) },
mansion_fishtank      = { "Fish Tank",         "mansion", "X", 900, 36, 0.90, "Rare",     Vector3.new(5,3,2) },
mansion_billiards     = { "Billiard Table",    "mansion", "X",1000, 58, 0.20, "Epic",     Vector3.new(4.4,2.8,8) },
mansion_roomba        = { "Runaway Vacuum",    "mansion", "L",  90,  4, 0.30, "Uncommon", Vector3.new(1.4,0.4,1.4), special = "Living" },
mansion_cursedportrait= { "Cursed Portrait",   "mansion", "H", 400, 12, 0.40, "Rare",     Vector3.new(3,4,0.3), special = "Cursed" },
mansion_potion        = { "Fizzing Potion",    "mansion", "L", 300,  2, 1.00, "Rare",     Vector3.new(0.6,1,0.6), special = "Volatile" },
```

**Specials:**

| Special | Behaviour |
|---|---|
| `Living` | Wanders at speed 6 when nobody is holding it |
| `Cursed` | Raccoons prefer the carrier; it purifies in the truck |
| `Volatile` | The first hard impact fizzes it; the second breaks it with a confetti pop |
| `Container` | Opens with a Crowbar for an Artifact roll; also worth its own value |
| `FallsFromCeiling` | Spawns hanging; drops at the room's collapse telegraph |

**Physics:** set physical properties so `AssemblyMass` roughly tracks weight. Use
`CustomPhysicalProperties` density per item, and document the formula.

### 11.2 Carry and condition

```lua
return { grabRange = 8, liftPerPlayer = 15, dragSpeedFactor = 0.4, scrapeDps = 0.04,
  slowWeight = 40, minSpeedFactor = 0.45, baseWalk = 16, maxTether = 10, maxItemSpeed = 60,
  maxStepDist = 12, alignResponsiveness = 25, orientResponsiveness = 18, forceFactor = 1.6,
  throwSpeed = 42, throwLift = 12, impactSpeed = 25, impactRange = 35, damageScale = 0.6,
  breakBelow = 0.2, depositDwell = 0.5 }
```

### 11.3 Contracts, quotas and payout (Pure/Quota.luau, Pure/Payout.luau)

**Base quota by site and size:**

| Site | Small (6 min) | Medium (8 min) | Large (10 min) |
|---|---|---|---|
| mansion | 1,500 | 3,500 | 7,500 |
| ship | 2,500 | 5,000 | 9,500 |
| factory | 3,000 | 6,000 | 11,000 |
| museum | 3,500 | 7,000 | 12,500 |

**Crew factor:** 1 player 0.6, 2 → 0.8, 3 → 0.9, 4 → 1.0.
**Spawned total value** is about quota × 1.6.

**Modifiers (payout bonus):**

| Modifier | Bonus |
|---|---|
| Blackout | +20% |
| SlipperyFloors | +15% |
| FastCollapse (duration ×0.8) | +25% |
| FragileWeek (all fragility +0.3, capped at 1) | +25% |
| BigItemsOnly | +20% |
| RaccoonInfestation (×2 raccoons) | +20% |
| NoTools | +30% |
| Fog | +15% |

**Payout per run:**
- `pool = banked × siteMult × (1 + sum(modifier bonuses))`.
- Site multipliers: mansion 1.0, ship 1.15, factory 1.3, museum 1.5.
- **If the quota is met:** add a `timeBonus` of `remainingSeconds × 3` per player.
  **If not:** the pool is × 0.5 (a partial payout).
- **Split:** 70% of the pool by each player's credited carried value, 30% equally.
- **Friend bonus:** +10% to a player who has a friend in the crew (cap +20%; check with
  `Player:IsFriendsWithAsync`, cached).
- **XP per player:** `50 + floor(personalPayout / 20) + (quotaMet and 100 or 0)`.
- **Idempotency:** payouts are keyed by `runId`, recorded in `runLedger`, so they never pay
  twice.

### 11.4 Crew Level and site unlocks (Pure/Xp.luau)

- **XP to next level:** `floor(100 × L^1.35)`; Crew Level max 60.
- **Perks** unlock by level: Lifter L5, Scout L8, Medic L12, Engineer L16, Packer L20.
  - **Lifter:** +15% speed when carrying Heavy+.
  - **Scout:** scanner range ×2.
  - **Medic:** revive time ×0.5.
  - **Engineer:** Jack +10 s.
  - **Packer:** fragile damage ×0.7.
  - Perk slots: 1 at L5, 2 at L20, 3 at L40. Perks swap freely in the Depot.

**Site unlocks (one-time; no per-run fee, ever):**

| Site | Crew Level | Permit (Cash, once) | Truck tier |
|---|---|---|---|
| Mansion | 1 | free | — |
| Ship | 5 | 1,500 | — |
| Factory | 10 | 4,000 | II |
| Museum | 16 | 9,000 | III |

### 11.5 Tools (Config/Tools.luau)

Each tool has tiers I–V. Prices are the Cash cost to buy tiers II–V. Tier I is free when the
tool unlocks.

| Tool | Unlock level | Stat per tier (I → V) | II / III / IV / V price |
|---|---|---|---|
| Dolly | 1 | max weight 40/50/60/70/80; speed factor 0.60/0.65/0.70/0.75/0.80 | 500 / 1,500 / 4,000 / 10,000 |
| Scanner | 2 | range 20/30/40/50/60; reveals value, rarity and Mimics | 400 / 1,200 / 3,000 / 8,000 |
| Cart | 4 | capacity (Light items) 3/4/5/6/6; speed 0.8/0.82/0.85/0.88/0.9 | 600 / 1,800 / 4,500 / 11,000 |
| Crowbar | 6 | open time (s) 3/2.5/2/1.5/1 | 700 / 2,000 / 5,000 / 12,000 |
| Foam Spray | 8 | charges 1/2/2/3/3, 45 s of no fragile damage | 800 / 2,200 / 5,500 / 13,000 |
| Magnet | 10 | range 8/10/12/14/16; cooldown 6/5.5/5/4.5/4; Light only | 900 / 2,500 / 6,000 / 14,000 |
| Jack | 12 | props a collapsible for 20/24/28/32/36 s | 1,000 / 2,800 / 6,500 / 15,000 |
| Rope | 14 | length 12/16/20/24/28; tow behind you | 1,100 / 3,000 / 7,000 / 16,000 |

- **Loadout:** 3 tool slots; a 4th with the Extra Tool Slot pass.
- **Rules:** tools are equipped in the Depot only, and they're never lost.

### 11.6 Truck (Config/Truck.luau)

| Tier | Bed capacity (max banked value per run) | Cash cost | Crew Level |
|---|---|---|---|
| I | 3,000 | free | 1 |
| II | 6,000 | 2,000 | 3 |
| III | 10,000 | 6,000 | 8 |
| IV | 16,000 | 15,000 | 15 |
| V | 25,000 | 35,000 | 25 |
| VI | 40,000 | 80,000 | 35 |

- **Contract requirement:** the contract board shows which truck tier each contract needs:
  the quota must be ≤ capacity.
- **Cosmetic slots:** paint, horn, decal.

### 11.7 Collapse (Config/Collapse.luau)

- **Duration** comes from the contract size (360 / 480 / 600 s); FastCollapse ×0.8.
- **Groups 1–4** fall at integrity 75 / 50 / 30 / 15, far-to-near.
- **Telegraph:** 3 s.
- **Debris:** lifetime 8 s; cap 120 parts (pooled).
- **Alarm:** at 10%. **Final settle:** at 0%.
- **Jack:** pauses one collapsible's fall while active. The integrity clock keeps running.

### 11.8 Artifacts and odds (Pure/Odds.luau; the catalog shows these numbers)

- **12 Artifacts per site.** Example Mansion set: Grandmother's Locket, Ruby Egg, Ghost Lantern,
  Golden Gramophone, Clockwork Bird, Founding Deed, Velvet Crown, Moon Pocketwatch, Dragon
  Teapot, Silver Key, Portrait of Nobody, the Everlasting Candle.
- **Rarity odds when a roll succeeds:** Rare 70%, Epic 22%, Legendary 7%, Mythic 1%. Pick
  uniformly within a rarity.
- **Chance per container opened:** 35% (Small), 45% (Medium), 60% (Large).
- **Pity:**
  - after 8 consecutive successful runs with no Artifact, the next opened container is
    guaranteed;
  - after 60 runs on a site without a Legendary or better, the next roll is at least Legendary.
- **Duplicates:** +5 Tokens and a "condition upgrade" if it was banked in better condition.
- **Weekend Double Artifact Luck:** chance ×1.5, never above 90%. Free, never sold.
- **Test:** a Lune Monte Carlo test (100k rolls) verifies the observed rates are within ±0.5%
  of the stated odds and that pity triggers correctly.

### 11.9 Prices and SKUs (Config/Prices.luau; IDs stay 0 until I provide them)

**Game passes:**

| Pass | Robux | What it gives |
|---|---|---|
| VIP Crew | 249 | gold name tag, gold museum frame, +1 Token per day |
| Extra Tool Slot | 199 | 4 tools instead of 3 |
| Museum Wing+ | 149 | +12 plinths |
| Truck Radio | 99 | play licensed Roblox audio from your truck |
| Photo Studio Pro | 79 | filters, poses, frames |

**Developer products:**

| Product | Robux | Notes |
|---|---|---|
| Crew Pass S1 | 399 | grants tiers already reached |
| Cosmetic bundles | 99–299 | direct purchase, never random |
| Confetti Cannon x5 | 25 | server-wide cosmetic burst |
| Daily Quest Reroll | 15 | max once per day |

**Never sold:** Cash, Tokens, XP, Artifacts, luck, revives, collapse time, skips.

### 11.10 Performance budgets (Config/Perf.luau)

| Budget | Limit |
|---|---|
| Valuables per building | ≤ 60 |
| Nuisances | ≤ 8 |
| Debris parts | ≤ 120 |
| Particle emitters active | ≤ 30 |
| Draw calls, mid phone | target < 150 |
| Client memory, low-end phone | target < 800 MB |
| Server Lua heap growth over a 1-hour soak | ≈ 0 |

Pool debris, VFX and nuisances.

---

## 12. Data

### 12.1 DataStores

- **Profiles:** ProfileStore `PlayerData_v1`. Use `.Mock` in Studio.
- **Ordered boards:** `BestHaul_<site>`, `FastestClear_<size>`, `WeeklyHaul_<weekKey>`,
  `MuseumLikes_<weekKey>`.
- **MemoryStore:** `Runs` HashMap (tickets), `FindCrew` SortedMap (queue), `CommunityGoal`
  (counter).

### 12.2 Rules

- No yields inside `UpdateAsync` transforms. Respect request budgets; batch leaderboard writes
  every 60 s.
- Every saved-shape change bumps `Schema.VERSION` and adds a migration. Shipped migrations
  are never edited.

### 12.3 Schema v1 (typed in `Shared/Schema.luau`)

```lua
export type PlayerData = {
  version: number, cash: number, tokens: number, xp: number, crewLevel: number,
  tools: { [string]: number },            -- toolId -> tier (1..5); absent = locked
  truckTier: number, loadouts: { { string } }, loadoutSlots: number, perks: { string },
  sitesUnlocked: { [string]: boolean },
  artifacts: { [string]: { count: number, firstAt: number, bestCondition: number } },
  museum: { capacity: number, slots: { [string]: string } },
  cosmetics: { owned: { [string]: boolean }, equipped: { [string]: string } },
  quests: { dayKey: number, daily: { { id: string, progress: number, claimed: boolean } },
            weekKey: number, weekly: { { id: string, progress: number, claimed: boolean } },
            rerollDay: number },
  pass: { season: number, xp: number, premium: boolean, claimed: { [string]: boolean } },
  pity: { [string]: { sinceArtifact: number, sinceLegendary: number } },
  stats: { runs: number, clears: number, bestHaul: number, fastestClear: number, broken: number,
           duoCarries: number, revives: number },
  runLedger: { string },                  -- last 20 paid runIds
  purchaseIds: { string },                -- last 100 receipt ids
  settings: { reduceShake: boolean, music: number, sfx: number },
  meta: { firstJoin: number, lastJoin: number, tutorialStep: number, streakDay: number, streak: number },
}
```

---

## 13. Art, UI and audio direction

### Style

- Chunky, rounded, stylized shapes. Bright but not neon.
- **Palette** (store in `Config/Ui.luau` and `docs/STYLE.md`):

| Token | Hex |
|---|---|
| Ink | #1E2230 |
| Paper | #F4F1E8 |
| Hazard Orange | #FF7A1A |
| Crew Blue | #2F7BFF |
| Safe Green | #3CCB6B |
| Alert Red | #F2435A |
| Gold | #FFC93C |

- **Rarity colours:** Common #B8C0CC, Uncommon #52D17C, Rare #3FA2FF, Epic #A86BFF,
  Legendary #FFB43C, Mythic #FF5FB0.
- **UI fonts:** `Enum.Font.LuckiestGuy` for display and numbers, `Enum.Font.FredokaOne` for
  body text.
- **Look:** thick outlines (`UIStroke`) on HUD text, chunky buttons with a darker bottom edge
  for depth, and a press tween.

### Blender

- Modular kit on a 4-stud grid.
- **Triangle budgets:** hero props ≤ 5–10k, kit pieces ≤ 1–2k, scatter ≤ 500.
- **Textures:** one shared 1024² trim sheet and one colour atlas per site.
- **Import:** each kit piece is imported **once** and duplicated in Studio (instancing).
  Never import whole maps.
- **Collision:** `CollisionFidelity = Box` for small props, Hull for mid-size, and Precise
  only where players walk.
- **Shadows:** `CastShadow` off on small props.
- **Items:** every item is one mesh plus a simple collision part when needed.
- Keep `.blend` sources in `art/`.

### Audio

- Use Roblox-licensed audio only.
- **Sound groups:** Music, SFX, UI, with volume settings.

### UI rules

- Everything scales with `UIScale` from a 844×390 reference.
- Respect `ScreenInsets = CoreUISafeInsets`.
- Keep bottom corners clear for the thumbstick and jump buttons.
- Test the smallest phone and a tablet in the Device Emulator.

---

## 14. Security checklist (verify each in Phase 3, re-check in Beta)

- Rewards only come from server-tracked deposits; nothing is granted from client events.
- Every remote has a schema and a rate limit. There are no `InvokeClient` calls.
- Carry validation runs at 10 Hz; teleporting or clipping items are reset and flagged.
- Prices and costs are read server-side. The client sends SKUs only.
- Session-locked profiles; idempotent `runId` payouts and `PurchaseId` receipts.
- Teleport data is used as a key only. Tickets are validated in MemoryStore. Run servers
  reject unknown players.
- A per-run Cash ceiling: if `pool` exceeds 3× the spawned total, log
  `LogCustomEvent("PayoutAnomaly")` and cap it.
- `DevCommands` exist only when `RunService:IsStudio()` is true; assert this at startup.

---

## 15. Report format at the end of every phase

1. **What I built:** files and systems, with one line each.
2. **What I tested and how:** commands, MCP playtests, screenshots attached or described,
   console output summary.
3. **What I could not test,** and why.
4. **Numbers:** performance, generation time, economy-sim results where relevant.
5. **Deviations** from this spec, and why (also in `docs/DECISIONS.md`).
6. **Risks and open questions** for me.
7. **What's next:** the exact plan for the next phase.

Then stop and wait for my "go".

---

**Start now with Phase 0 (tech setup) and Phase 1 (prototype).** The single most important
question in this whole project is whether carrying a grandfather clock out of a crumbling
house with a friend is fun. Spend your effort there first.

## 7. Game design document: CRUMBLE CREW

### Identity

- **Final title:** CRUMBLE CREW
- **Tagline:** *Grab the good stuff. Carry it out. The building won't wait.*
- **Genre:** Co-op PvE extraction with physics comedy; collection and light survival layers.
- **Target audience:**
  - Ages 10–24 who play with friends: the core 13–17 group plus the growing 18+ group
    (29% of Roblox DAU).
  - Maturity rating: Minimal or Mild. Cartoon peril, no gore, no jump-scare horror
    by default; the haunted site is opt-in and seasonal.
  - Phone first, also PC, console and tablet.
- **Core fantasy:** A scrappy, slightly incompetent crew pulls off heroic last-second
  rescues of treasure from buildings that are falling apart. Players feel clever when the
  plan works and laugh when it doesn't.

### Core gameplay loop

```
DEPOT (hub) ─ pick contract ─▶ RUN (6–10 min, 1–4 players)
  scout ▶ grab ▶ carry (solo / duo / dolly) ▶ avoid hazards & nuisances ▶ load truck
  ▶ quota met? ─ yes ▶ extract before collapse ▶ HAUL RECEIPT (cash, XP, Artifacts)
                └ no ▶ partial pay + "so close" stats
◀── upgrade tools/truck, unlock sites, place Artifacts in museum, quests, pass ──┘
```

**Minute-to-minute:** read the room, decide what's worth carrying, coordinate, and
recover from chaos (a dropped vase, a raccoon stealing a spoon, a collapsing staircase).

### Player progression

| Track | What grows | Source | Gate |
|---|---|---|---|
| Crew Level 1–60 | Unlocks sites, contract sizes, perk slots | XP from runs, quests | none |
| Tools I–V | Carry speed, dolly capacity, magnet range, jack time, scanner | Cash | site and level |
| Truck I–VI | Bed capacity (max haul per run), ramp speed, cosmetic slots | Cash | Crew Level |
| Site Mastery ★1–5 | Harder modifiers, Large contracts, boss finales | Run grades | per site |
| Catalog | Item and Artifact completion per site | Runs (earned RNG) | — |
| Crew License (prestige) | Badge, frame and title; resets nothing but adds a "license" modifier set for higher payouts | Mastery ★5 on 4 sites | 50+ h |
| Crew Pass (seasonal) | Cosmetics and Tokens | Pass XP from all play | free and premium tracks |

**Perk slots:** perks are earned by level, not bought, and can be swapped any time.
- Lifter: +15% speed when carrying heavy items.
- Scout: scanner range ×2.
- Medic: revive 50% faster.
- Engineer: the jack holds +10 s.
- Packer: fragile items take 30% less damage.

### Sites (worlds)

Each site is built from 20–30 hand-made room modules, 2–3 set-piece rooms and its own
hazard set. Unlock order:

1. **Grandma's Mansion** (tutorial tier). Creaky floors, a chandelier drop, a cat that
   trips people. Finale on Large contracts: the Wrecking Ball swings through walls on a
   telegraphed rhythm.
2. **Sinking Cruise Ship.** Floors tilt over time, water rises deck by deck, doors seal.
   Finale: Kraken Arms sweep the deck.
3. **Toy Factory.** Conveyors, crushers, gremlins that steal small items. Finale: the
   Robo-Foreman stomps and shakes the floor.
4. **Museum After Hours.** Laser grids, guard bots, Mimic display cases. Finale: the Night
   Curator chases whoever holds the Jackpot item.
5. **Volcano Observatory.** Lava vents, heat zones that melt plastic items, earthquakes.
6. **Orbit Station.** Low gravity, airlocks, items float when power drops.
7. **Haunted Castle** (seasonal, October). Ghost Landlord, cursed items. Opt-in "spooky".
8. **Storm Tower** (winter season). Wind gusts push carriers; top floors collapse first.

**Contracts:**

| Size | Run length | Quota |
|---|---|---|
| Small | 6 min | 1,000–2,500 |
| Medium | 8 min | 3,000–6,000 |
| Large | 10 min | 7,000–12,000, plus a boss finale |

Quotas scale with crew size: solo 60%, duo 80%, trio 90%, quad 100%.

**Modifiers (pick 0–3; each adds +10–40% payout):** Blackout, Slippery Floors, Fast
Collapse, Fragile Week (all items fragile), Big Items Only, Raccoon Infestation, No Tools,
Fog.

### Maps (hub)

**The Depot** (24-player hub):
- Contract Board.
- Tool Shop (Dot).
- Truck Garage (paint, horn, upgrades).
- Museum Wing (Professor Pyx) with each player's personal museum room, reached by portal.
- Photo Studio and a Leaderboard Wall.
- Practice Yard: a physics playground with junk to carry and throw, a waiting-room toy.
- Party pad: stand together, then hit Start Contract.

### NPCs

- **Gus:** contract boss. Gives the tutorial voice lines and the daily "special orders".
- **Dot:** tool shop and upgrades.
- **Professor Pyx:** curator, catalog and Artifact appraisals.
- **The Inspector:** a weekly visitor with special contracts and Token rewards.

### Enemies (nuisances; non-lethal by design)

| Nuisance | Behaviour | Counter |
|---|---|---|
| Raccoon Gang | Steals light items and runs to a vent | Chase, throw an item at it, magnet |
| Roomba-Bot | Bumps ankles; carriers stumble and fragile items take damage | Step over, jack it |
| Security Drone (Museum) | Spots carriers; alarm speeds the collapse +20% for 15 s | Break line of sight, Blackout helps |
| Pigeon Flock | Startles, blocking vision briefly | Shoo (interact) |
| Mimic Case (Museum) | An Epic-looking item that bites and makes you drop items | Scanner reveals it |
| Gremlins (Factory) | Untie ropes, steal tools | Packer and Engineer perks |
| Ghost Landlord (Castle) | Chases whoever holds cursed items | Drop the curse in the truck (purifies) |

When a player is **downed**, they drop what they carry. A crewmate revives them in 3 s,
or they stand up on their own after 10 s. Nobody is eliminated, which suits a young
audience and keeps groups together.

### Bosses (Large-contract finales)

Each boss is a **hazard pattern you escape while carrying a Jackpot item** worth about 25%
of the quota. Fighting it isn't the point.

| Boss | Site | Pattern |
|---|---|---|
| Wrecking Ball | Mansion | Telegraphed swing lanes |
| Kraken Arms | Ship | Sweep plus ink blind |
| Robo-Foreman | Factory | Stomp shockwaves; conveyor reversals |
| Night Curator | Museum | Chases the Jackpot holder; laser corridors |

### Tools (weapons/abilities)

| Tool | Use | Upgrades |
|---|---|---|
| Grabber Gloves | Default grab; throw short | Throw distance, grip |
| Dolly | Carry one heavy item solo (slow) | Speed, weight class |
| Cart | Stack up to 6 small items | Capacity, wheels |
| Rope | Tow items up and down stairs, tie to the truck | Length |
| Magnet | Pull small items from up to 12 studs | Range, cooldown |
| Foam Spray | Wrap a fragile item for 45 s (no damage) | Charges |
| Jack | Prop a cracking ceiling or floor for 20 s | Duration |
| Scanner | Shows value, rarity and Mimics | Range |
| Crowbar | Opens safes, crates and stuck doors | Speed |

Players equip 3 tools; VIP and convenience add a 4th slot.

### Items and rarities

- **Valuables:**
  - Value: $20–$2,000.
  - Weight class: Light 1 person, Heavy 2, Huge 3–4 or dolly.
  - Fragility: 0–100% value loss per hard impact.
  - Size: blocks doorways or fits a cart.
- **Special item types:**
  - Cursed (draws nuisances).
  - Living: the escaping vacuum, a runaway suit of armour.
  - Volatile: fizzes if dropped twice, then shatters harmlessly with a confetti pop and
    is lost.
- **Rarities:** Common (grey), Uncommon (green), Rare (blue), Epic (purple),
  Legendary (gold), Mythic (pink; Artifacts only).

### Collection system

- **Site catalog:** every item type seen and hauled; silhouettes for unseen ones.
- **Artifacts:** 12 per site. Shown odds: Rare 70%, Epic 22%, Legendary 7%, Mythic 1%.
  Pity guarantees a Rare+ every 8 runs and a Legendary per site within 60 runs.
- **Rewards:** completion pays titles, plaques and cosmetics; mastery ★5 needs a
  completed catalog.
- **Personal museum:** a room with plinths. Visitors can like it (one like per visitor
  per week), and the top 10 by likes are featured weekly on the Depot wall.

### Quests

- **Daily (3):** e.g., "haul 5 fragile items intact", "revive a crewmate", "extract with
  60 s left", "carry a Heavy item with a friend".
- **Weekly (7):** bigger versions, plus site-specific tasks. Pays Tokens.
- **Special Orders (Gus):** "bring back a grandfather clock": pick-up goals inside runs.
- **The Inspector (weekly):** a fixed seed contract everyone plays; leaderboard by haul.

### Events

- **Seasonal sites:** Haunted Castle (October), Storm Tower (winter), Summer Cruise variant.
- **Weekend Double Artifact Luck:** free for everyone, never sold.
- **Community goals:** "All crews haul $1B this week → new truck paint for everyone."
- **Admin-style live events,** e.g., "Raccoon Invasion hour". Free, scheduled, announced.

### Daily and weekly systems

- Daily quests and a login streak (small Cash and Tokens; it never resets to zero, it
  only pauses).
- Weekly contracts, the Inspector seed, weekly museum spotlight, and a weekly leaderboard reset.

### Achievements (badges)

First Haul, Two's Company (first duo carry), Not a Scratch (perfect fragile haul), Clutch
(extract with under 5 s left), Hoarder (truck 100% full), Curator (first full catalog),
plus one Boss Escape badge per boss and Crew License I–V.

### Leaderboards

- Best single haul per site (crew).
- Fastest quota per contract size.
- Weekly total haul.
- Museum likes (weekly).
- A friends filter on every board.

### Trading

**Not at launch.** Artifacts and cosmetics are account-bound. Trading invites scams,
duplication exploits and real-money trading, and it would put Artifacts under
paid-random-item and PolicyService trading checks. Revisit only if players ask for it,
and then only for duplicate cosmetics, with both-sides confirm and logs.

### PvP

- None at launch.
- **"Rival Crews"** (opt-in, after launch): two crews of 2–4 race to empty one building.
  Players can swipe from the rival's unloaded pile, but there's no damage or knockdown
  between crews.
- No boosts sold that affect this mode.

### Multiplayer systems

- **Hub server:** 24 players.
- **Run servers:** 1–4 players in reserved servers.
- **Party flow:** a party forms on the party pad or through invites; launch data puts
  the invitee in the inviter's party.
- **Queue Random Crew:** fills empty slots through a MemoryStore matchmaking queue.
- Solo is always allowed, with scaled quotas.
- After a run, everyone returns to the same hub server where possible.

### Social systems

- Friend crew bonus: +10% Cash with at least one friend, up to +20%.
- Emotes, pings and quick chat ("Help me lift!", "Truck's full!").
- Spectate while downed.
- Haul Receipt card: a funny stats screenshot ("Dropped the piano 3 times").
- Photo mode in museums.
- Shared crew stats on the leaderboard.

### Economy

| Currency | Earned by | Spent on | Sold? |
|---|---|---|---|
| **Cash** | Hauls (main), quests, achievements | Tools, truck, site permits, museum wings | **No** (not at launch) |
| **Tokens** | Weekly quests, the Inspector, Crew Pass, login streak | Token shop cosmetics | **No** (earned only) |
| **Robux** | — | Cosmetics, Crew Pass, VIP, convenience, private servers | Platform currency |

- **Balancing targets** (to tune live with Configs): a new player buys the first tool
  upgrade after run 2, unlocks site 2 at around 45–60 minutes, and reaches truck III at
  around 8–10 hours.
- **Tracking:** log every source and sink with `AnalyticsService:LogEconomyEvent`.

### Inventory

- **Tools:** owned, tier, equipped (3–4 slots).
- **Cosmetics:** suits, hats, gloves, truck paints, horns, emotes, museum decor.
- **Artifacts:** catalog flags plus museum placement.
- **Consumables** (fun only): confetti cannons.
- **Rules:** no inventory cap on cosmetics; museum plinths are capped by wing size.

### UI/UX (phone first)

- **HUD:**
  - Top centre: quota bar (Cash loaded vs quota) and a building-integrity bar that cracks.
  - Top left: crew portraits with "carrying" icons.
  - Right thumb: context button (Grab, Drop, Throw, Use Tool).
  - Left: joystick.
  - Small ping button.
- **Carry feedback:** weight icons, a strain meter for heavy items, and a red flash when a
  fragile item gets hit.
- **End screen:** the Haul Receipt with cash breakdown, Artifacts and funny stats, plus
  "Play Again" (same crew) as the biggest button.
- **Shop:** follows the earlier shop playbook: one hero offer, the same card layout for
  every item, and a value line on each item.
- **Accessibility:** a reduce-shake setting, colour-blind-safe rarity colours (with shapes
  and labels), and text size 9 or larger.

### Tutorial and onboarding (the first 3 minutes decide ranking)

| Time | What happens |
|---|---|
| 0:00 | Spawn in the Mansion hall already holding a vase; Gus: "Truck's outside, go!" |
| 0:15 | First haul pops +$120 with juice |
| 0:40 | Grandfather clock: "Too heavy — grab the other end!" A bot or friend helps |
| 1:20 | A ceiling crack and a short collapse sequence; run out; first receipt |
| 2:00 | Depot. Free Dolly, contract board highlighted, invite-a-friend prompt |
| ~5:00 | Second run; a guaranteed Rare Artifact; museum unlocks |

- **No splash screens or menus before play,** because first-play bounce is a ranking
  signal.
- **Funnel steps logged:** Joined → FirstHaul → DuoCarry → FirstExtract → DepotArrive →
  SecondRunStart → ArtifactPlaced.

### Game passes (permanent)

| Pass | Robux (start; tune) | Value line |
|---|---|---|
| VIP Crew | 249 | Gold name tag, gold museum frame, +1 Token a day |
| Extra Tool Slot | 199 | Carry 4 tools instead of 3 |
| Museum Wing+ | 149 | 12 more plinths for your collection |
| Truck Radio | 99 | Play music from your truck (licensed Roblox audio) |
| Photo Studio Pro | 79 | Filters, poses and frames for museum photos |

### Developer products

- **Crew Pass (season):** about 399 R$, cosmetics and Tokens. Buying mid-season grants
  every tier already reached.
- **Cosmetic bundles:** suits and truck paints, sold directly, never random.
- **Confetti Cannon x5:** 25 R$ (server-wide fun, no gameplay effect).
- **Daily quest reroll:** 15 R$, at most once a day (convenience).
- **Private server:** a low monthly price.

**Not sold, ever:** Cash, Artifacts, luck, revives, collapse delays, skips.

### Cosmetics

- **Player:** suits (hazmat, tuxedo mover, astronaut, knight), gloves, hard hats, back
  items, carry poses, emotes.
- **Truck:** paints, decals, horns, exhaust trails (mild).
- **Museum:** plinth styles, wallpapers, plaques.

Cosmetics come from the shop, the pass, the Token shop and catalog completion. Nothing
cosmetic is random-for-Robux.

### Retention systems

- **D1:** daily quests, login streak, Artifact pity progress, the next site teaser, and
  the museum's first display.
- **D7:** the weekly Inspector contract, sites 3–4 unlocked, Crew Pass tiers, and the
  first Large contract with a boss.
- **Long term:** site mastery ★5, full catalogs, Crew Licenses, seasonal sites, Rival
  Crews, the museum spotlight.
- **Re-engagement:** experience notifications (13+, at most one per day): "The Inspector
  posted a new contract" or "Weekend Double Artifact Luck is on". No gating.

### Live-service update strategy

| Cadence | Content |
|---|---|
| Weekly (Friday) | New Inspector seed, contract modifiers rotation, quest rotation, a museum spotlight |
| Every 2 weeks | 10–15 new items or one nuisance, balance patch (patches ship separately) |
| Monthly | A new site *variant* (e.g., Mansion: Flooded) or a new boss |
| Every 3 months | A new full site plus a new Crew Pass season |
| Seasonal | Haunted Castle (Oct), Storm Tower (Winter), Summer Cruise |

Every update is measured against the onboarding funnel, D1/D7 cohorts and the
recommendation signals before the next one is scoped.

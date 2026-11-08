## 1. The Top 100, researched

### How the list was built

- **The list:** Roblox's official discovery service (`explore-api`), "Top Playing Now" sort,
  all devices, all countries. Snapshot taken **2026-11-08 18:23 UTC**, a Sunday afternoon in
  the US.
  - That sort returned 98 games. The other official sorts (Top Trending, Up-and-Coming,
    Fun with Friends, Top Revisited) were merged in, and everything was ranked by live CCU.
- **Verified data for every game:** Roblox's own APIs (`games.roblox.com`, game passes,
  developer products) gave name, CCU, visits, favorites, likes/dislikes, created/updated
  date, Roblox genre, maturity, max players, which official sorts list it, its description,
  every game pass for sale with its price, and its developer products (12,129 products,
  1,196 passes).
- **Per-game analysis:** five parallel analysts read each game's data plus targeted web
  sources, with 79 searches in total. They filled in core loop, return drivers,
  progression, monetization, acquisition, difficulty and success drivers. Every field is
  tagged **verified** (in Roblox's data or a cited source), **reported** (third-party
  tracker or press) or **analysis** (our inference).
  - Evidence quality: high for 20 games, medium for 77, low for 3.
  - The per-game JSON with every field and source URL is in the report folder
    (`analysis_all.json`, `top100_data.json`).

**Read with care.** CCU is a single Sunday-afternoon snapshot. One game (Fake an Egg) runs a
weekly Sunday "Admin Abuse" event, and an Arabic-only game was at its local evening peak.
Visits are lifetime totals. Session length and revenue aren't public, so we don't state
them. Third-party peak figures (e.g. "Grow a Garden peaked at 22M") are **reported**,
not verified.

### Platform context (reported, from Roblox's Q3 2026 results, Oct 29 2026)

- Daily active users averaged 138M, down 9% YoY. Monthly payers were 30M, down 16%. Q4
  bookings guidance is −10% to −15% YoY.
- Users 18+ are 29% of age-checked DAU globally and 37% in the US, growing 18% YoY. US
  adults reportedly monetize 50%+ above under-18s.
- Since January 2026, chat requires an age check (facial estimation or ID), and users are
  grouped into age bands.

Source: [Q3 coverage](https://gaming.net/roblox-q3-revenue-rises-16-as-bookings-fall-12-to-1-7-billion),
[age checks](https://www.pcgamer.com/gaming-industry/roblox-to-make-facial-age-checks-mandatory-to-access-any-chat-features-and-will-put-common-sense-limits-on-the-age-ranges-users-can-chat-within).

### Verified headline numbers

- The Top 100 had **7.60M** players online at the snapshot. #1 Steal An Egg alone had
  967k; #100 Blade Ball had 21.9k.
- **33 of the 100 are 60 days old or less, but they hold only 18.8% of the Top 100's
  players.** 30 games over 3 years old hold 40.4%.
- 47 of the 100 were created in 2026.
- Median like rate is 91.4%. The lowest is 33.4% ("obby but you get smaller every
  stage", which is still #55).
- Monetization (counts are from game pass and product names, so treat them as keyword
  matches):
  - Median of 6 game passes per game, median pass price 299 R$.
  - 13 games sell no passes; 53 have a developer product priced at 10 R$ or less.
- **The breakout cliff:**
  - Grow a Garden reportedly peaked around 22.3M CCU (Aug 2025). At the snapshot it had
    **19,677**, outside the Top 100.
  - Steal a Brainrot (reported peak ~25M) had **101k**.
  - Fish It (reported ~1.4M) had **68k**.
  - Animal Hospital (reported ~1.3M in July 2026) had **25k**.

### All 100 games

(The interactive page has the sortable version with every field. Links go to each game's
Roblox page.)

{{TABLE}}

## 2. How the Top 100 classify

Every game carries all the genre tags that fit (2–4 each), so the counts add up to more
than 100. "Share of CCU" is the share of the Top 100's 7.60M players in games carrying that
tag.

| Genre tag | Games | Share of CCU | CCU held by games over 1 year old | Read |
|---|---|---|---|---|
| Collection | 42 | 56.5% | 59% | Near-universal layer, not a genre |
| RNG/Gacha | 28 | 38.8% | 46% | Very common, high CCU, high saturation |
| Simulator | 23 | 28.5% | 18% | Trend-driven |
| Social/Hangout | 20 | 23.2% | 89% | Durable |
| Survival | 20 | 14.9% | 74% | Durable |
| Incremental | 18 | 24.7% | 11% | Trend wave (+1 per step, tap) |
| Roleplay/Life | 18 | 19.7% | 88% | Durable, network effects |
| Meme/Trend | 18 | 10.2% | 21% | Short-lived spikes |
| Escape/Co-op PvE | 17 | 12.9% | 62% | Durable and rising |
| Horror | 16 | 13.8% | 68% | Durable and rising |
| Pet/Creature | 14 | 25.1% | 22% | Big but trend-driven |
| Sandbox | 12 | 14.7% | 81% | Durable when social (Brookhaven, Fling Things) |
| Battlegrounds/Fighting | 12 | 11.7% | 88% | Durable, hard to build |
| Tycoon | 11 | 21.5% | 6% | Pure trend wave |
| Party/Minigames | 11 | 12.2% | 74% | Durable |
| Racing/Vehicle | 11 | 4.3% | 34% | Many small games |
| Physics/Ragdoll | 10 | 6.9% | 47% | New wave (6 created in October) |
| Adventure | 8 | 10.8% | 100% | Veteran-only (Blox Fruits, 99 Nights) |
| Shooter/FPS | 8 | 5.9% | 89% | Durable, competitive |
| Steal/Raid | 7 | 16.8% | 8% | Peak trend, oversaturated |
| Obby/Platformer | 7 | 4.4% | 45% | Mixed |
| Sports | 7 | 4.3% | 63% | Durable, growing |
| Asymmetric 1vX | 6 | 9.9% | 94% | Durable, incumbents dominate |
| RPG/Anime RPG | 6 | 8.1% | 95% | Durable, very hard to build |
| Strategy | 6 | 3.4% | 74% | Niche |
| Dress-up/Fashion | 5 | 4.9% | 80% | Durable, DTI-dominated |
| Avatar/Shopping | 4 | 10.9% | 96% | Durable |
| Tower Defense | 3 | 2.3% | 77% | Durable, gacha-heavy |
| Story | 3 | 1.0% | 0% | Chapter horror, new |
| Social Deduction | 2 | 6.2% | 94% | MM2 |
| Fishing | 2 | 2.2% | 100% | Durable niche |

**Primary genre (one per game):** Roleplay/Life 9, Survival 8, Horror 8, Shooter 7,
Incremental 7, Racing/Vehicle 7, Sports 6, Physics/Ragdoll 6, Steal/Raid 5 (but 16% of all
Top 100 CCU), RPG 4, Battlegrounds 4. Roblox's own top-level labels: Simulation 34,
Survival 17, Roleplay 13, Action 8, Sports & Racing 6, Shooter 5.

**Player mode:** single-player-in-a-server 26, PvP 23, co-op PvE 19, mixed 17, social 15.

### The most successful genre combinations

| Combination | Games | Share of CCU | Verdict |
|---|---|---|---|
| Collection + RNG | 25 | 37.7% | Biggest by far. The default monetization layer, crowded |
| Collection + RNG + Simulator | 11 | 23.0% | The "simulator" formula; trend-driven |
| Collection + Incremental + Pet/Creature | 9 | 20.1% | Steal-a/egg games |
| RNG + Steal/Raid (+Tycoon) | 5 | 16.0% | Today's #1 (Steal An Egg); trend peak |
| Roleplay + Social/Hangout | 13 | 17.9% | Brookhaven-type; durable but closed |
| **Horror + Survival + Escape/Co-op PvE** | **11** | **8.8%** | **Durable (veteran share 62–74%) and rising** |
| Physics/Ragdoll + Sandbox | 7 | 4.8% | New wave; mostly 1-player toys |
| Collection + Shooter/FPS | 6 | 5.1% | Rivals and duel shooters; durable |
| Sports + Physics/Collection | 7 | 4.3% | Ability sports; durable |
| Social Deduction / 1vX + Collection | 6 | ~10% | MM2, Forsaken; durable, incumbent-heavy |

## 3. The patterns

### What dominates

- **By player count:** collection and RNG layers on simulator, steal and pet loops.
  Collection + RNG games hold 37.7% of the Top 100's players.
- **By durability:** social roleplay, PvP skill games (shooters, battlegrounds, duels,
  1vX) and co-op survival horror. In these genres, games over a year old hold 62–95% of
  the genre's players.
- The current CCU leaders and the durable genres are mostly different games. The steal
  and incremental waves deliver huge peaks and then fall about 99% (Grow a Garden, Steal
  a Brainrot).

### Loops that repeat

- **Earn → multiply → unlock the next zone/egg** (incremental, steal and pet games).
- **Short round → reward → cosmetic or unlock → requeue** (MM2, Rivals, duels, Forsaken,
  Blade Ball).
- **Co-op run under pressure → extract or survive → meta-unlock** (DOORS, Dead Rails,
  Criminal Simulator, Fatal Baboons, 13 Days to Escape, Dandy's World, Evade).
  Criminal Simulator, 31 days old, already had 38k players.
- **Hangout → roleplay → customize home/avatar** (Brookhaven, Berry Avenue, Bloxburg).

### Progression

- Collection indexes are in 68 games and RNG rolls in 57.
- Levels and passes are common; 27 games sell a season or battle pass.
- Rebirth/prestige appears in only 13 games: it's an incremental-genre tool, not a
  universal one.

### What brings players back

- Events: 76 of the 100 had an event, title tag or seasonal currency at the snapshot (it
  was Halloween week).
- Unfinished collections.
- Friends: 28 of the 100 are on the "Fun with Friends" sort.
- Mastery in skill games.
- Offline earnings in idle and tycoon games (8).

### What drives 30+ minute sessions (analysis; Roblox doesn't publish session length)

- Runs or rounds that chain back to back with a reward on each.
- Being one roll or one zone away from the next rare item.
- Playing with friends.
- Build or customize projects (Bloxburg houses, museum displays).

### What brings players back the next day (analysis)

- Daily quests and login streaks.
- Offline earnings to collect.
- Weekly or Saturday update rhythms. Volleyball Legends ships weekly; Southern Mudding
  updates every Friday.
- Limited-time event currencies.
- Ranked seasons.

### Social mechanics

- Friend boosts and "play with friends" bonuses.
- Gifting: 55 games sell a "Gift" copy of their passes or products, 1,285 items in total.
- Trading (14 games, concentrated in veterans: MM2, Adopt Me, BloxStrike).
- Spectating, server-wide buyable events (22 games sell items that affect the whole
  server), and leaderboards.

### Monetization (verified pass and product names; keyword counts)

| Item type | Games selling it |
|---|---|
| 2x or multiplier passes | 68 |
| VIP | 52 |
| Skips | 42 |
| Currency packs | 44 |
| Revives | 33 |
| Luck boosts | 29 |
| Season pass | 27 |
| Server-wide effects | 22 |

- Half of the Top 100 (50) sell paid random items.
- Analysts rated pay-to-win risk high or medium-high in 22 games, medium in 39, low in 39.
- Price ladders start very low: 53 games have a 10 R$ or cheaper product.

### Who does each thing best

- **Collection goals:** Pet Simulator 99 (3,000+ pets), Fisch (400k+ fish variations),
  Sol's RNG (400+ auras), Bee Swarm, Creatures of Sonaria, The Forge (1,000+ forge
  variations).
- **RNG done well:** Sol's RNG (the roll is the game, but luck is earned and potions are
  craftable) and Fisch (mutations on a skill minigame). Volleyball Legends' style spins
  work, but the analysts flag them as a pay-to-win risk.
- **PvP done well:** RIVALS (97M favorites, the most of any Top-100 game), MM2, The Strongest Battlegrounds, Jujutsu Shenanigans, BedWars and
  Volleyball Legends. All are skill-first with cosmetic economies.
- **Strongest viral potential:** Survive Your Ideas ("Type ANY word. It happens"), Steal
  An Egg (revenge stealing), the ragdoll sandboxes and DONT SPLASH. They are all
  clip-friendly and explainable in one sentence.

### Simple to build but enormous reach (all rated Easy or Medium)

- Ragdoll Physics: 71.8k players with a 1-player server.
- +1 Speed Keyboard Escape: ~22.7M visits/day.
- Throw Food For Animals: 245k players at 50 days.
- Break and Steal an Egg, Tap Simulator, Anime Dice, Cut a Rock, Raise The Biggest Family.

Most of them are trend vehicles with a high sustainability risk.

### Expensive or difficult to build (Very Hard: 14 games)

Blox Fruits, Adopt Me, Pet Simulator 99, Bee Swarm, TSB, BedWars, DOORS, Bloxburg, Driving
Empire, Creatures of Sonaria, Attack on Titan Revolution, BloxStrike, Practical Basketball
and King Legacy. These are years of content, netcode and art.

### What a small team could realistically make (analysts flagged 87 of 100 as feasible in some form)

The realistic templates are:
- the co-op run (Criminal Simulator, Fatal Baboons, 13 Days to Escape, 30 Floors Up,
  DONT SPLASH);
- the duel shooter (Deagle Arena, One Tap);
- the physics sandbox;
- the chapter horror;
- the job-sim + anomaly (Sell Fries).

### Growing trends

- **Physics/ragdoll:** 6 sandboxes were created in October 2026, and 5 of them are on
  Up-and-Coming.
- **Co-op runs under a deadline or quota.**
- **"Anomaly" job sims:** Sell Fries, Animal Hospital.
- **Sports:** 4 soccer games, basketball, volleyball.
- **Steam co-op ports:** Sweep The Moon, Fatal Baboons, RoWorld, Turbo Soccer.
- **Regional and cultural niches:** an Arabic lizard-hunt game, Emergency Hamburg,
  Southern Mudding.
- **Ranked duels:** MvS Duels, Deagle Arena, Huss Valley.

### Oversaturated

- **"Steal a ___":** 5 in the Top 100, with clones copying each other within weeks
  ("inspired by steal an egg").
- **"+1 per step/second" incrementals.**
- **Anime tower defense.**
- **Big-city life roleplay:** Brookhaven's network effect.
- **Pure ragdoll toys:** six near-identical games in 30 days.

## 4. Opportunities

1. **Durable genres executed as small, replayable loops.**
   - Co-op survival and escape is durable (62–74% veteran share) and rising, but many
     new entries are finite story chapters. MOUSE and PINKIE PROMISE were rated a high
     sustainability risk because they run out of content.
   - A procedural co-op run (DOORS-style randomness, Dead Rails-style trips) keeps that
     durability without needing endless hand-made chapters.
2. **Physics fun with goals and friends.**
   - Six ragdoll toys hit the Top 100 in a month as 1-player sandboxes with no goals.
   - The veterans that use ragdolls (TSB, Jujutsu Shenanigans, Fling Things) have social
     or competitive structure. A goal-driven co-op physics game sits in the gap.
3. **Older teens and young adults.** 18+ users are 29% of DAU and growing 18% YoY, yet 56
   of the Top 100 are rated Minimal maturity and aimed at kids. Skill-based co-op and
   competitive games with a Mild tone can serve both groups.
4. **Ability sports outside soccer.** Volleyball Legends proves ability-sports last
   (2 years, 68k). Soccer already has four entries. Dodgeball, hockey and rugby-style
   physics sports are open, but PvP needs enough players online, so bots are mandatory.
5. **Regional and cultural games.** Localized themes break in with little competition:
   an Arabic-only lizard hunt (24.8k), Emergency Hamburg, Dubai RP.
6. **Collection without paid gambling.** RNG and collection layers drive CCU, but paid
   random items now carry policy obligations (shown odds, PolicyService restrictions in
   AU, BE, NL, UK and BR). Earned RNG with shown odds plus cosmetic sales is a clean,
   policy-proof version.
7. **Recombining Steam co-op hits.** Ported Steam games are succeeding, but direct ports
   carry IP risk. Original combinations of their mechanics (physics carry, quotas, crew
   roles) are an open lane.
8. **Social deduction beyond MM2.** It is durable (94% veteran share) with only 2 games.
   An anomaly-spotting deduction game merges two live trends.
9. **Underused mechanics:**
   - Co-op carrying and shared physics tasks (almost absent).
   - Player-made content inside rounds (Survive Your Ideas proves the appetite).
   - Personal showcases others visit (museums, homes).
10. **Avoid:** the steal-a, +1 incremental and anime TD waves. They are high-CCU today but
    oversaturated and decay fast, and a late entrant gets the decline without the peak.

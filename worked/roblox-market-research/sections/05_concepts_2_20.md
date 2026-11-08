## Concepts 2–20

How to read these blocks:

- **CCU Potential** is a realistic player count 90+ days after launch, assuming solid execution. It is scaled to this snapshot:
  - **Low:** below the Top-100 floor (Blade Ball, #100, 21,851).
  - **Medium:** about 22k–50k (the median Top-100 game has 35,906).
  - **High:** 50k–150k (roughly ranks #11–#33).
  - **Very High:** 150k+ (the Top 10).
  - Launch spikes are noted where they differ.
- Anchor CCU is from the verified snapshot (2026-11-08 18:23 UTC, a Sunday). "Veteran share" means the share of a genre tag's Top-100 CCU held by games over a year old.
- All concepts follow the guardrails: no pay-to-win in PvP, no energy timers, no paid skips of friction we added, and earned rolls only, with odds shown. No concept sells a random item, so PolicyService paid-random checks apply only if one is added later.

---

### 2. DODGE LEAGUE

- **Genre:** Sports; Battlegrounds/Fighting, Collection
- **Core Concept:** 3v3 and 4v4 ability dodgeball on small courts. A clean hit ragdolls the target off the court. A catch puts the thrower out and brings a teammate back. Throw styles (curve, split, magnet, lob) are earned through play and mastery, never sold or rolled. Matches last 3–4 minutes.
- **Core Gameplay Loop:** Queue → Throw / dodge / catch → Ragdoll outs, catch revives → Tickets + XP → Unlock and master styles → Ranked → Requeue
- **First 10 Minutes:** 0:00–1:00: the first throw ragdolls a bot within ~20 s; prompts teach dodge and catch. 1–3: 3v3 against bots; the first catch-revive replays in slow motion. 3–4: choose a first style. 4–8: first live match, bots filling gaps. 8–10: MVP card, daily challenge, party invite.
- **Long-Term Progression:** 1 h: 2–3 styles, ranked placement. 10 h: all base styles, mastery tier 3, a club. 50+ h: mastery cosmetics, seasonal ladder titles, club tournaments.
- **Social Features:** Party queue, clubs and a club ladder, spectating, final-out replay.
- **PvP/PvE:** PvP: ranked, casual, party modes. Bots for practice and backfill.
- **Collection System:** Styles (10 mastery tiers each), ball skins, jerseys, ragdoll "out" poses, emotes.
- **RNG:** None in matches. Season-pass cosmetic capsules are earned, with odds shown and pity.
- **Economy:** Tickets from matches buy styles and cosmetics. Stars from the pass buy premium cosmetics. Sinks: unlocks, a rotating shop, club creation.
- **Monetization:** Cosmetic pass and bundles, VIP (tag, entry effect), private servers for leagues, club banners. Avoids: paid style spins (analysts call Volleyball Legends' paid ability spins its main friction), in-match consumables, and boosts that unlock styles faster.
- **Retention:** D1: daily challenge, second style close. D7: weekly mode rotation, club ladder reset. Long-term: a new style each season, ranked resets.
- **Viral Potential:** Ragdoll outs and last-second catches clip naturally; an automatic "Play of the Match"; club invites.
- **Development Difficulty:** Hard
- **Development Cost/Complexity:** Ball physics on the server, with client prediction and hit checks. Elo matchmaking with bot backfill (MemoryStore, TeleportService). Ragdoll and get-up animations, 3–4 courts, style effects, mobile buttons.
- **CCU Potential:** Medium.
  - For: Volleyball Legends proves an ability sport can last nearly two years, and sports keeps 63% of its CCU in veterans.
  - Against: the 7 sports games hold only 327,420 CCU combined. Blade Ball, which is declining, already sells dodgeball as a mode.
  - Without convincing bots, early queues die.
- **Evidence anchors:** Volleyball Legends 68,120 (691 days); Murderers VS Sheriffs Duels 74,521 (637 days); Blade Ball 21,851 (1,240 days, sells Dodgeball mode tickets); RIVALS 211,924 (instant duel pads).

---

### 3. NIGHT SHIFT: ANOMALY

- **Genre:** Social Deduction; Horror, Job-sim
- **Core Concept:** 6–10 coworkers run a late-night store. One is secretly the Mimic, who swaps labels, moves stock, flips posters and can briefly pose as a customer. Coworkers report anomalies and vote. Three missed anomalies or a failed quota means the Mimic wins; a wrong vote costs the crew. Spooky, not gory; rounds last ~8 minutes.
- **Core Gameplay Loop:** Clock in → Work / plant anomalies → Spot and report → Vote → Wages + XP → Uniforms, maps, Mimic tools → Next shift
- **First 10 Minutes:** 0:00–1:00: a glowing upside-down poster. Report it: alarm, then a reward. 1–3: a training shift against a bot Mimic. 3–4: a live lobby; nobody is the Mimic in their first round. 4–10: a full shift, then a replay revealing every planted anomaly.
- **Long-Term Progression:** 1 h: a second store, a first Mimic tool. 10 h: all base maps, Mimic loadouts (different, not stronger). 50+ h: mastery badges, prestige uniforms, curated community anomaly packs.
- **Social Features:** Meeting chat (voice for eligible users), party queue, private shifts, spectating once "fired", a visitable break room.
- **PvP/PvE:** Hidden-role PvP, one against many. NPC customers add pressure.
- **Collection System:** Field Notes (every anomaly type spotted, out of ~60), uniforms, reveal animations, break-room decor.
- **RNG:** Equal, shown odds for the Mimic draw; random anomaly spots; nothing random is sold.
- **Economy:** Wages buy cosmetics and decor; Night Tokens from weekly challenges buy seasonal items.
- **Monetization:** Uniforms, reveal animations, season pass, VIP, private servers with custom rules. Avoids: paid Mimic chance (Survive Your Ideas sells writer-chance boosts, rated high pay-to-win), "Jumpscare All" griefing, paid weapons and revives.
- **Retention:** D1: Field Notes progress. D7: an "Anomaly of the Week" set. Long-term: a new store each month, holiday stores.
- **Viral Potential:** "It was the poster all along" reveals, voting drama, streamable deduction; best with 6+ friends, so invites matter.
- **Development Difficulty:** Medium
- **Development Cost/Complexity:** Roles and voting, a data-driven anomaly system (what can change on each prop), simple customer AI, a round log for replays, 3 prop-dense maps, chat safety.
- **CCU Potential:** Medium.
  - For: hidden-role lasts. MM2 holds 445,264 after 4,677 days.
  - Against: MM2 holds 94% of Top-100 social-deduction CCU, and the anomaly fad is cooling (Animal Hospital: 25,392, down from a reported ~1.3M July peak).
  - Lobbies need 6+ humans, and bots can't fake deduction.
- **Evidence anchors:** Murder Mystery 2 445,264 (4,677 days); Sell Fries! [Anomaly] 41,783 (48 days); Animal Hospital (Anomaly) 25,392 (182 days); Fake an Egg 28,358 (35 days, deception hook).

---

### 4. TRAP ARCHITECTS

- **Genre:** Obby/Platformer; Party/Minigames, Physics/Ragdoll, UGC
- **Core Concept:** In 8–16 player rounds, three Architects get 60 s to place physics traps (fans, logs, conveyors, bounce pads) on a bare course; everyone else runs it. Architects score on fails and finishes, so impossible courses score badly. Runners rate courses, and the best enter a public, replayable Library.
- **Core Gameplay Loop:** Get role → Build (60 s) or run → Ragdoll fails, finishes → Rate → Bricks + XP → Unlock traps → Roles rotate
- **First 10 Minutes:** 0:00–1:00: a fan launches you within 15 s; first checkpoint by 40 s. 1–3: finish and rate. 3–5: first Architect turn: 6 starter traps, ghost previews, snapping. 5–7: watch runners hit your traps. 7–10: first unlock, the Library opens, invite friends to a private build room.
- **Long-Term Progression:** 1 h: 12 traps, 2 themes. 10 h: ~40 traps, Architect rank, Library publishing. 50+ h: creator badges, a weekly Hall of Fame, remixes, seasonal trap packs.
- **Social Features:** Co-building, private build labs, course share codes, Library likes and follows.
- **PvP/PvE:** Light PvP (Architects vs Runners); Library courses solo or co-op.
- **Collection System:** Traps, themes, runner skins, ragdoll emotes, creator badges.
- **RNG:** Architects draft 3 trap cards per round from their earned traps, shown openly.
- **Economy:** Bricks from runs, finishes and good ratings buy traps, themes and cosmetics. Library slots grow with rank.
- **Monetization:** Runner skins, trails, trap skins (same hitboxes), season pass, private build servers, VIP (extra saved courses). Avoids: paid checkpoints and jump gear (Tower of Hell sells both, rated medium pay-to-win), a paid builder role, paid featuring.
- **Retention:** D1: a notification like "Your course was played 40 times". D7: a weekly theme contest. Long-term: the Library is the content engine.
- **Viral Potential:** "My trap took out 12 people" clips, course codes on TikTok, YouTubers' troll courses.
- **Development Difficulty:** Hard
- **Development Cost/Complexity:** Grid placement, ~40 trap scripts, DataStore course saves with a Library index, ratings (a course needs a finisher to count), text filtering, moderation, 16-player ragdolls, a mobile build UI.
- **CCU Potential:** Medium.
  - For: Survive Your Ideas shows player-made chaos pulls crowds; Tower of Hell shows obbies last.
  - Against: obby keeps only 45% of its CCU in veterans, and analysts rate Survive Your Ideas a high sustainability risk.
  - The Library is the long-term bet: it grows only if the first month produces good courses.
- **Evidence anchors:** Survive Your Ideas 76,341 (32 days, top-trending #5); Tower of Hell 39,364 (3,064 days); Fling Things and People 40,058 (1,971 days, no update in over a year).

---

### 5. DEEP HAUL

- **Genre:** Fishing; Co-op PvE, Collection
- **Core Concept:** A 2–5 player boat crew: Captain (steers, sonar), Netter (schools), Harpooner (big catches), Mechanic (hull). Deep-sea monsters ram the boat and snag lines, so the crew splits jobs under pressure and races the catch back to port. Solo players get an NPC deckhand.
- **Core Gameplay Loop:** Sail out → Find fish → Net / harpoon / reel → Fend off monsters → Port → Sell, log Compendium → Upgrade boat → Deeper water
- **First 10 Minutes:** 0:00–1:00: the first cast from the dock lands a fish in ~20 s (reel minigame). 1–3: board the starter boat (players or NPCs crew it), net a school. 3–6: the first "big one": one player harpoons, one reels, a serpent rams the hull. 6–8: sell; the first Compendium page completes. 8–10: bigger hold, second route, invite.
- **Long-Term Progression:** 1 h: 2 zones, ~30 entries. 10 h: 5 zones, role mastery, monster trophies, boat tier 4. 50+ h: abyss zones, weekly legendary monsters, full Compendium.
- **Social Features:** Harbor hub (20–30 players), a "need a Mechanic" board, shared payout plus a crew bonus, haul leaderboards, catch photos.
- **PvP/PvE:** PvE only; crew derby leaderboards.
- **Collection System:** Compendium (species × size × variant), monster trophies, boat paints and parts.
- **RNG:** Catch tables per zone, with rarities shown in the Compendium. Pity on legendaries. Luck is never sold.
- **Economy:** Coins from catches buy upgrades, gear and bait; milestone Pearls buy cosmetics. Sinks: repairs, upgrades.
- **Monetization:** Boat and crew cosmetics, season pass, VIP, private servers. Avoids: luck passes (Fish It sells up to +150%), "sell/appraise anywhere" friction skips (Fisch), and rods for Robux.
- **Retention:** D1: Compendium rewards, a daily bounty fish. D7: a weekly legendary monster, weekend derby. Long-term: a new zone each season.
- **Viral Potential:** Monster ambushes, giant-catch photos, "our boat sank" clips.
- **Development Difficulty:** Hard
- **Development Cost/Complexity:** Boat physics with crew stations and hull damage, fish-school and monster AI, catch tables, Compendium UI, many fish models (recolours help), ocean weather.
- **CCU Potential:** High.
  - For: both Top-100 fishing games are veterans (167,568 CCU combined), and both are solo; no co-op crew fishing game is in the Top 100.
  - Against: Fish It's slide from a reported ~1.4M peak shows the genre can cool.
  - Relaxed solo fishers may resist crews, so the NPC deckhand must be good.
- **Evidence anchors:** Fisch 99,878 (970 days); Fish It! 67,690 (748 days, reported ~1.4M peak in Nov 2025); صيد الضبّان 24,836 (36 days, co-op desert hunting).

---

### 6. CONVOY

- **Genre:** Survival; Racing/Vehicle, Co-op PvE
- **Core Concept:** A 4–8 player crew runs a land-train (an engine pulling cargo, turret, workshop and bunk cars) across a storm wasteland generated fresh each run. a dusty trip is one car on an endless road; Dead Rails is a train on fixed rails. Convoy is a moving base: the crew picks forks on a route map, adds and rearranges cars mid-run, and outruns a storm front.
- **Core Gameplay Loop:** Plan route → Drive and maintain → Scavenge stops → Defend → Add or upgrade cars → Beat the storm to the waypoint → Bank Scrap → Next leg
- **First 10 Minutes:** 0:00–1:00: sand-crabs board the moving convoy; grab a wrench or turret, first fix or kill within 30 s. 1–3: scavenge a gas station against a return timer. 3–5: the storm wall appears; vote on a fork (safe or loot). 5–8: bolt on a salvaged turret car. 8–10: waypoint, payout, first blueprint, invite.
- **Long-Term Progression:** 1 h: 3 biomes, 6 car types. 10 h: ~15 car types, crew roles, harder storms. 50+ h: long expeditions, distance leaderboards, liveries.
- **Social Features:** Crews of 4–8, a depot hub, shared payout, convoy naming, a shared garage.
- **PvP/PvE:** PvE only.
- **Collection System:** Car blueprints, a creature bestiary, relics from ruins, liveries.
- **RNG:** Random routes. Ruin loot shows its rarity, and blueprint drops have pity.
- **Economy:** Scrap buys cars and upgrades; fuel and ammo exist only inside a run; Expedition Tokens buy cosmetics. Sinks: builds, repairs.
- **Monetization:** Liveries, horns, crew cosmetics, season pass, VIP (saved layouts), private servers. Avoids: weapon and stat passes like a dusty trip's (37 passes, including Nuke Launcher 599 and +300% health), start-of-run guns (Dead Rails), paid revives.
- **Retention:** D1: blueprint unlocks, a daily route. D7: weekly expedition modifiers. Long-term: a new biome each season.
- **Viral Potential:** Storm escapes, convoy pile-ups, creature ambushes, long-convoy screenshots.
- **Development Difficulty:** Very Hard
- **Development Cost/Complexity:** Players walking on fast, linked vehicles is a known Roblox networking problem. Also: streaming the generated roads and terrain, a car-attachment system, creature AI, the storm.
- **CCU Potential:** Medium.
  - For: road-trip survival is proven, and Survival keeps 74% of its CCU in veterans.
  - Against: two veterans already own this niche, and analysts call Dead Rails a declining veteran.
  - The hard tech raises the odds of a buggy launch, which kills a co-op game's first week.
- **Evidence anchors:** a dusty trip 26,393 (996 days, top-trending #15 after an update); Dead Rails 34,801 (675 days); 99 Nights in the Forest 210,110 (614 days).

---

### 7. LANTERN KEEPERS

- **Genre:** Survival; Base Defense, Co-op PvE
- **Core Concept:** 2–8 keepers land on a randomly generated island with a dying lighthouse. By day they gather, rescue villagers and build. At night fog brings creatures that only light can hurt, so keepers aim lanterns, place light towers and keep the lighthouse burning until dawn. Survive the set nights, then sail to the next island. Blueprints are earned, never bought.
- **Core Gameplay Loop:** Land → Gather → Build lights and walls → Defend at night → Rescue villagers → Earn blueprints → Final dawn → Next island
- **First 10 Minutes:** 0:00–1:00: land at dusk with a lantern; a fog wisp bursts when you shine on it (~30 s). 1–3: light the lighthouse together. 3–5: place a first light tower from a ghost preview. 5–8: a short first night; creatures push, walls need repair. 8–10: dawn, pick 1 of 3 blueprints, invite prompt.
- **Long-Term Progression:** 1 h: first island cleared, ~8 blueprints. 10 h: 4 biomes, earned classes (Tinkerer, Medic, Ranger). 50+ h: endless "Long Night" mode, island modifiers, leaderboards.
- **Social Features:** Co-op crews, a hub where each player's rescued villagers live, a friend bonus.
- **PvP/PvE:** PvE only.
- **Collection System:** Blueprints, rescued villagers (each with a hub job), a fog-creature bestiary, lantern skins.
- **RNG:** After each night, a draft of 3 blueprints, with rarity odds shown and pity. Islands are randomly generated.
- **Economy:** Timber and oil exist only inside a run. Embers from nights survived buy classes and upgrades. Shells from events buy cosmetics.
- **Monetization:** Light colours, lantern and lighthouse skins, villager outfits, season pass, VIP, private servers. Avoids what 99 Nights sells: revives (55–230), single-life guns, class rerolls and "Skip to Level".
- **Retention:** D1: a teaser for the next island. D7: weekly fog modifiers, a Long Night ladder reset. Long-term: a new biome each season.
- **Viral Potential:** "Last light standing" clutches, night-lighting screenshots.
- **Development Difficulty:** Hard
- **Development Cost/Complexity:** Light-based damage (raycasts from each light), wave AI that paths around structures, build placement, day/night, modular islands, villager NPCs, lighting cheap enough for phones.
- **CCU Potential:** High.
  - For: it joins two durable co-op patterns: 99 Nights-style survival, and tower defense (3 games, 175,932 CCU, 77% veteran share). Co-op PvE works with 1–2 players, so cold start is mild.
  - Against: it risks reading as a 99 Nights clone. The thumbnail has to show light as the weapon.
- **Evidence anchors:** 99 Nights in the Forest 210,110 (614 days); Anime Adventures 107,301 (1,783 days); Tower Defense Simulator 27,576 (2,713 days).

---

### 8. MICRO MAYHEM

- **Genre:** Adventure/Exploration; Physics/Ragdoll, Collection, Co-op PvE
- **Core Concept:** 1–6 toy-sized players explore a giant house, one room per trip, finding lost items (a button, an earring, a toy soldier) to carry home to a Shelf of Treasures. Hazards: a ceiling fan, a roaming cat, a robot vacuum. Falls ragdoll you; they don't kill. Unlike the ragdoll sandbox wave, it has goals, co-op and a collection.
- **Core Gameplay Loop:** Pick room → Explore → Dodge hazards → Find treasure → Carry it home (big ones need two) → Shelf it → Unlock gear → New rooms
- **First 10 Minutes:** 0:00–1:00: slide down a spoon into a cereal bowl; first treasure within 45 s. 1–3: carry it home; a shelf slot lights up. 3–6: the cat arrives and swats you across the room. 6–8: unlock a string grapple, climb the fridge. 8–10: a two-person treasure prompts an invite or a match.
- **Long-Term Progression:** 1 h: 2 rooms, ~15 treasures, grapple, glider. 10 h: all 8 rooms and the backyard; shelf ~60% full. 50+ h: sparkly variants, weekly "Messy Day" layouts, set badges.
- **Social Features:** Co-op up to 6, carrying together, shelf visits, photo mode.
- **PvP/PvE:** PvE, plus an optional race mode.
- **Collection System:** Shelf of Treasures (~150 items in sets), gear, tiny outfits.
- **RNG:** Random treasure spots and sparkly variants; odds in the Shelf book, pity per room.
- **Economy:** Crumbs from expeditions buy gear and outfits. Completed sets unlock shelf decor.
- **Monetization:** Outfits, emotes, shelf themes, season pass, VIP (a second shelf), private servers. Avoids: paid treasure radar (Fatal Baboons sells one for 299), paid reach (Fling Things' Farther Reach 460), paid revives.
- **Retention:** D1: a set close to complete. D7: Messy Day remixes. Long-term: a new room each month.
- **Viral Potential:** Cat-swat ragdoll clips, "I'm tiny" screenshots, shelf showcases.
- **Development Difficulty:** Medium
- **Development Cost/Complexity:** Oversized household props (Blender kit), cat and vacuum AI, carrying (shared with #1 Salvage Crew), grapple, glider, shelf saves. Hand-built rooms are the main cost.
- **CCU Potential:** Medium; a launch spike is likely.
  - For: "obby but you get smaller" holds 34,607 despite a 33.4% like ratio, so the tiny hook earns clicks.
  - Against: the physics wave (10 games, 6 from October 2026) is mostly goal-less solo sandboxes that analysts rate high-risk.
  - Risk: hand-built rooms may run out faster than updates arrive.
- **Evidence anchors:** obby but you get smaller every stage 34,607 (resurfaced, top-trending #8); Ragdoll Physics 71,776 (26 days, 1-player servers); Sweep The Moon 53,136 (16 days, co-op chores, visible completion meter).

---

### 9. KAIJU KEEPERS

- **Genre:** Pet/Creature; Battlegrounds/Fighting, Collection
- **Core Concept:** Hatch a small kaiju, raise it in your sanctuary and evolve it along earned branching trees (Fire, Tide, Storm, Crystal). Play as it in 8–12 player city brawls where buildings crumble, and in 4-player boss raids. Arenas are bracketed by stage; within a bracket, forms differ in moves, not power.
- **Core Gameplay Loop:** Hatch → Raise and train → Arena or raid → DNA + XP → Evolve → New egg species → Repeat
- **First 10 Minutes:** 0:00–1:00: the egg cracks in a toy city, and the first building falls within 20 s. 1–3: feed, train, first evolution (pick 1 of 2 branches) at ~3 min. 3–6: raid tutorial against a giant crab, with players or bots. 6–9: a first Rookie-bracket brawl. 9–10: a second egg slot, invite prompt.
- **Long-Term Progression:** 1 h: a stage-2 form. 10 h: stage 4 on two species, raid tier 3, an arena rating. 50+ h: top-stage forms, full trees across 8 species, cosmetic patterns.
- **Social Features:** Raid parties, sanctuary visits, photo mode, crews with a trophy hall.
- **PvP/PvE:** Both: bracketed PvP arenas and PvE raids.
- **Collection System:** 8 species × ~5 forms × cosmetic patterns, plus raid-boss trophies.
- **RNG:** Raid-earned eggs (species odds shown, pity) and pattern rolls on evolution (odds shown). Eggs are never sold.
- **Economy:** DNA pays for evolution and training. Crystals from raids buy cosmetics. Eggs hatch after raids, not on a real-time timer.
- **Monetization:** Stat-free skins and patterns, sanctuary decor, season pass, extra creature slots, VIP, private servers. Avoids: paid eggs, DNA multipliers, death protection (Bug Evolution's "Keep Levels", rated high pay-to-win) and species bundles (flagged at Creatures of Sonaria).
- **Retention:** D1: the next evolution, a raid egg. D7: a weekly raid boss, arena season. Long-term: a new species monthly.
- **Viral Potential:** City-smashing clips, raid-boss screenshots, evolution reveals.
- **Development Difficulty:** Very Hard
- **Development Cost/Complexity:** ~5 rigged and animated forms per species. A destructible city (pre-broken buildings, reused debris). PvP balance across forms, raid AI, bracket matchmaking. The cost of each species limits update pace.
- **CCU Potential:** Medium.
  - For: Creatures of Sonaria shows creature collection plus fighting can last six years.
  - Against: Sonaria holds only 30,438, and analysts rate it Very Hard to build. The evolution hits are 30–34 days old, in a tag that keeps only 22% of its CCU in veterans.
- **Evidence anchors:** Creatures of Sonaria 30,438 (2,327 days); Bug Evolution 33,809 (30 days); +1 Venom Evolution 48,926 (34 days); The Strongest Battlegrounds 73,079 (1,559 days).

---

### 10. DUEL ARCADE

- **Genre:** PvP (Battlegrounds/Fighting); Party/Minigames, Ranked
- **Core Concept:** Instant 1v1 matchmaking into best-of-3 sets drawn from 12 rotating micro-duels of 30–90 s each: quickdraw, sumo push, ragdoll joust, reflex tap, ice shove, laser dodge. Each duel has its own Elo, and an overall rank blends them. Players show off with cosmetics only.
- **Core Gameplay Loop:** Queue → Best-of-3 micro-duels → Elo per duel → Coins + XP → Cosmetics → Requeue or tournament
- **First 10 Minutes:** 0:00–1:00: tap Play and be in a quickdraw within 10 s. 1–4: sumo, joust and reflex against bots, each taught in ~20 s. 4–8: real sets; if no opponent appears within ~15 s, a bot steps in, labelled as practice. 8–10: rating cards for each duel, then a friend challenge link.
- **Long-Term Progression:** 1 h: placed in all 12 duels. 10 h: a tier in each duel, plus a title for your best. 50+ h: a Grand rank, seasonal tournaments, mastery cosmetics.
- **Social Features:** Friend challenges, lobby screens showing top duels, 8-player "king of the hill" rooms, leaderboards for each duel.
- **PvP/PvE:** PvP; bots for practice.
- **Collection System:** Mastery cosmetics for each duel, titles, victory emotes.
- **RNG:** The duel order in a set is random and shown. There is no item RNG; the shop rotates at fixed prices.
- **Economy:** Coins buy cosmetics. Tournament Tickets are earned through weekly play only.
- **Monetization:** Cosmetics, season pass, VIP, private servers for community tournaments. Avoids: Deagle Arena-style Revenge, Nuke and Instant Revive products, buyable abilities (Huss Valley, rated high pay-to-win), and paid cases (MvS, Deagle Arena, One Tap).
- **Retention:** D1: finishing placements, a featured duel each day. D7: a duel swapped in weekly from a pool of 20. Long-term: seasons, tournaments.
- **Viral Potential:** 10-second clips, quickdraw reactions, per-duel leaderboards, challenge links.
- **Development Difficulty:** Medium
- **Development Cost/Complexity:** 12 small arenas, each with one simple mechanic. Ratings for each duel, matchmaking through MemoryStore, server timestamps so reflex duels stay fair despite lag, anti-cheat.
- **CCU Potential:** Medium.
  - For: duels are proven, and Shooter (89%) and Battlegrounds (88%) keep most of their CCU in veterans.
  - Against: the field is crowded with incumbents, and each duel has little depth.
  - Only 2 players are needed per match, the easiest cold start of the PvP concepts here.
- **Evidence anchors:** Murderers VS Sheriffs Duels 74,521 (637 days); Deagle Arena 27,737 (203 days, 33.27 favorites per 1k visits); One Tap 22,596 (339 days); Huss Valley 42,247 (69 days).

---

### 11. DIG DYNASTY

- **Genre:** Incremental; RNG (earned only), Collection, Social showcase
- **Core Concept:** Dig down through biome layers (soil, cave, crystal, magma, ancient city). Each broken block is an earned roll for a fossil, gem or relic, and drill upgrades dig faster and deeper. Finds fill a personal museum that others tour and rate for a weekly leaderboard. Rebirth resets depth for permanent multipliers.
- **Core Gameplay Loop:** Dig → Roll finds → Sell or display → Upgrade drill → Deeper biomes → Rebirth → Curate museum → Get rated
- **First 10 Minutes:** 0:00–1:00: the third click pops a fossil tooth with a rarity flash; first upgrade by 50 s. 1–3: break into the caves, first gem. 3–5: assemble a 3-bone skeleton, display it. 5–8: visitors rate it; ticket income starts. 8–10: a crew helper (digs only while you play), then tour the top museum.
- **Long-Term Progression:** 1 h: layer 4, ~20 exhibits. 10 h: 3 rebirths, a second museum wing. 50+ h: ancient city, full Fossil Codex, top-museum ranking, seasonal exhibits.
- **Social Features:** Museum visits and ratings, a filtered guestbook, shared dig sites with friends (finds stay separate).
- **PvP/PvE:** Solo-in-server; competition only via ratings and depth leaderboards.
- **Collection System:** Fossil Codex (skeletons from bones), gem cuts, relics.
- **RNG:** Earned rolls only: the Codex shows the odds for each layer, a pity counter stays on screen, and luck is never sold.
- **Economy:** Coins (duplicates, museum tickets) buy upgrades; rebirth points buy multipliers.
- **Monetization:** Museum themes, cases, lighting, drill skins, season pass, VIP (an extra wing), private servers. Avoids: luck passes (Depth Incremental's Ultra Lucky 399), AFK multipliers (Cut a Rock sells up to 200x), x2 currency, timer skips. Revenue per player will be below the genre norm.
- **Retention:** D1: the next layer, ratings received while away. D7: a weekly exhibition contest. Long-term: new layers each update.
- **Viral Potential:** Rare-find reveals, museum tours, a top-museum leaderboard.
- **Development Difficulty:** Medium
- **Development Cost/Complexity:** Tile digging and roll tables are easy. The work is museum plot saves, visitor teleports and ratings that resist alt accounts. Models are mostly recolours.
- **CCU Potential:** Low sustained; a launch spike to Medium is plausible.
  - Incremental keeps only 11% of its CCU in veterans, and Depth Incremental and Cut a Rock are both under 60 days old.
  - The museum is the only lever for lasting.
- **Evidence anchors:** Depth Incremental 33,750 (31 days, 17.75 favorites per 1k visits); Cut a Rock 21,922 (54 days); Sol's RNG 36,269 (1,071 days, durable RNG collection); Bee Swarm Simulator 36,593 (3,154 days).

---

### 12. TACKLE TOWN

- **Genre:** Sports; Physics/Ragdoll, Party/Minigames
- **Core Concept:** A 5v5 ragdoll sport in the style of rugby. Carry the ball over the line, pass backwards, and tackle carriers into a tumbling heap. Phone controls come first: a thumbstick, tap to pass, hold to sprint, swipe to dive or tackle. Matches last 4 minutes. Pitch it as "ragdoll tackle football", not a rules lesson.
- **Core Gameplay Loop:** Queue → Run / pass / tackle → Ragdoll pile-ups → Score → Coins + XP → Kits, celebrations → Ranked → Requeue
- **First 10 Minutes:** 0:00–1:00: catch, dodge past a bot, get tackled into a big ragdoll, and score within 50 s. 1–3: 3v3 against bots, which teaches passing. 3–6: a first 5v5, with bots filling gaps. 6–8: MVP screen and a first celebration unlock. 8–10: daily challenge, party invite.
- **Long-Term Progression:** 1 h: position roles (Runner, Tank, Playmaker; different, not stronger). 10 h: ranked placement, a club. 50+ h: a club league, seasonal titles, kit collections.
- **Social Features:** Clubs, party queue, private matches, spectating.
- **PvP/PvE:** PvP; bots fill gaps.
- **Collection System:** Kits, boots, celebrations, tackle effects.
- **RNG:** None.
- **Economy:** Coins buy cosmetics. Club Points pay for banners and crests.
- **Monetization:** Kits, celebrations, season pass, club customisation, private servers. Avoids: stat boots, paid skill moves (flagged as an edge at Realistic Street Soccer), item rolls (Illegal Soccer).
- **Retention:** D1: a challenge and a celebration. D7: a weekly party mode (mud pitch, giant ball). Long-term: seasons, the club league.
- **Viral Potential:** Pile-ups, huge tackles, comedy dives.
- **Development Difficulty:** Hard
- **Development Cost/Complexity:** Ragdolls for 10 players at once, kept in sync. Tackle detection and ball possession that stay in sync on phones. Team-capable bots, 2–3 pitches, matchmaking.
- **CCU Potential:** Low.
  - For: Illegal Soccer proves that ragdoll chaos sport works.
  - Against: physics sports is crowded (4 soccer games already), and rugby is regional.
  - 5v5 needs 10 players per match, the largest of these concepts.
- **Evidence anchors:** Illegal Soccer 56,912 (180 days); Turbo Soccer 32,156 (50 days); Realistic Street Soccer 29,640 (1,191 days); Practical Basketball 85,889 (574 days).

---

### 13. SKY COURIERS

- **Genre:** Co-op PvE; Physics/Ragdoll, Obby/Platformer (traversal)
- **Core Concept:** Couriers deliver fragile physics packages across floating islands with gliders, grapples and jump pads. Packages include eggs, a cake, a jar of bees, and a piano that needs four carriers. Solo jobs are time trials with ghost replays, and "heavy" jobs need 2–4 players. #1 Salvage Crew is extraction under collapse; this is outdoor movement skill. The two can share carry tech.
- **Core Gameplay Loop:** Pick job → Plan route → Glide / grapple → Protect package → Deliver → Medals + tips → Upgrade gear → New islands
- **First 10 Minutes:** 0:00–1:00: jump off a cliff with a glider and a parcel, and land on the pad in ~30 s. 1–3: a grapple tutorial, and an egg delivered intact. 3–5: a first time trial, with an easy bronze. 5–8: a co-op sofa delivery with a matched courier. 8–10: a glider upgrade, and your friend's ghost on the route.
- **Long-Term Progression:** 1 h: 2 islands, ~10 routes. 10 h: 6 islands, gold medals, storm routes. 50+ h: speedrun boards, a weekly global route, glider collections.
- **Social Features:** Co-op jobs, races against friends' ghosts, a crew "company" with a logo and HQ.
- **PvP/PvE:** PvE. Competition comes from leaderboards and an optional live race mode.
- **Collection System:** Glider designs (same stats within each tier), route medals, a catalogue of odd packages.
- **RNG:** A daily mystery package, with odds shown.
- **Economy:** Tips buy gear tiers. Medals unlock cosmetics. Sinks: upgrades, HQ decor.
- **Monetization:** Gliders, outfits, trails, season pass, VIP, private servers. Avoids: selling higher gear tiers, paid auto-delivery and paid protection for fragile packages.
- **Retention:** D1: the next route. D7: a weekly global time trial. Long-term: new islands.
- **Viral Potential:** Shortcut discoveries, near misses, "the piano didn't make it" fails, speedruns.
- **Development Difficulty:** Medium
- **Development Cost/Complexity:** Glider and grapple controllers that need a lot of tuning to feel right. Packages simulated on each player's device and checked by the server. Ghost replays (stored position samples), islands built from a kit, leaderboards.
- **CCU Potential:** Low.
  - No delivery or traversal game is in the Top 100, and the closest matches (Can You Pass A Driving Test?, Sweep The Moon) are under a month old.
  - Time trials are niche, and it overlaps #1 enough to compete for the same players.
- **Evidence anchors:** Can You Pass A Driving Test? 28,967 (21 days, delivery jobs); Sweep The Moon 53,136 (16 days, co-op chores); Tower of Hell 39,364 (3,064 days, skill traversal).

---

### 14. HAUNTED HOTEL

- **Genre:** Tycoon; Horror, Anomaly, Co-op PvE
- **Core Concept:** 1–6 friends staff a hotel whose guests come with strange rules ("no towels to Room 4 after midnight"). Staff check in guests, clean and serve while keeping every rule. Break one and an incident hits: the lights die, or a hallway stretches. Profits upgrade wings and unlock new guests, each with a rule. Roles: Front Desk, Housekeeping, Kitchen, Night Porter. Unlike #3, there is no traitor; it is co-op rule memory plus tycoon growth.
- **Core Gameplay Loop:** Open night → Check in guests → Read rules → Work while keeping them → Survive incidents → Profit → Upgrade, new guests → Next night
- **First 10 Minutes:** 0:00–1:00: the first guest says "Don't knock on 2B". Knock anyway, and a harmless, funny scare follows. 1–3: serve, clean, earn first tips. 3–5: a first lobby upgrade. 5–8: night one, with three overlapping rules and the first incident. 8–10: payout, a teaser for the next wing, an invite.
- **Long-Term Progression:** 1 h: 5 guest types, one wing. 10 h: 4 wings, ~20 guest types. 50+ h: new hotel maps, rare guests, a complete Guest Ledger, a rating leaderboard.
- **Social Features:** Co-op staff, hotel visits, a rating board.
- **PvP/PvE:** PvE only.
- **Collection System:** The Guest Ledger (a book of rules), furniture, uniforms.
- **RNG:** Which guests arrive each night, with odds shown that rise with the hotel's rating. Pity on rare guests.
- **Economy:** Profit pays for upgrades. Stars from ratings buy cosmetics.
- **Monetization:** Decor packs, uniforms, season pass, VIP (an extra save), private servers. Avoids: Sell Fries' griefing products and weapons, Animal Hospital-style skips (Instant Brew Coffee, Run Fast Cola), paid revives, and paid offline multipliers (My Small Business VIP).
- **Retention:** D1: the next wing. D7: a "rule of the week" event. Long-term: new hotels.
- **Viral Potential:** "We broke the rule" clips, scare reactions, rulebook memes.
- **Development Difficulty:** Medium
- **Development Cost/Complexity:** Tycoon building, guest NPCs with rule triggers defined in data, incident events, co-op roles, art for each wing.
- **CCU Potential:** Low sustained; a launch spike is possible.
  - Tycoon keeps only 6% of its CCU in veterans, and the anomaly fad is cooling.
  - It overlaps #3, so build one of the two, not both.
- **Evidence anchors:** Sell Fries! [Anomaly] 41,783 (48 days); My Small Business 25,470 (22 days); Animal Hospital (Anomaly) 25,392 (182 days, reported ~1.3M peak); DOORS 38,021 (2,065 days, creatures with rules players learn).

---

### 15. HEIST CREW HQ

- **Genre:** Escape/Co-op PvE; Steal/Raid (AI targets only), Tycoon
- **Core Concept:** A crew of 1–4 plans heists on fictional, AI-guarded targets: a jewellery store, an art gallery, an armoured train, a sky vault. They pick an entry, assign roles (Hacker, Muscle, Driver, Lookout) and go quiet or loud. Players never steal from each other. Loot builds the hideout, whose rooms unlock gadgets and jobs. To keep a Mild maturity rating, the tone is cartoon and non-lethal: stun gadgets, guards seeing stars, no blood.
- **Core Gameplay Loop:** Pick job → Plan roles → Infiltrate → Crack vault → Escape → Fence loot → Upgrade hideout → Harder jobs
- **First 10 Minutes:** 0:00–1:00: at a corner jewellery store, pick the lock and grab a diamond within 45 s. The alarm trips, so sprint to the van. 1–3: the chase, then the payout. 3–5: build a planning table. 5–8: a first planned job, with matched players or AI crew. 8–10: a first gadget, invite prompt.
- **Long-Term Progression:** 1 h: 3 jobs, 2 rooms. 10 h: 8 jobs, all roles, a second hideout floor. 50+ h: elite contracts with modifiers, perfect-stealth badges, seasonal mega-heists.
- **Social Features:** Crew parties, hideout visits, crew names, leaderboards for the fastest and stealthiest runs.
- **PvP/PvE:** PvE only.
- **Collection System:** A trophy vault (art, jewels), gadgets, masks, cosmetic vans.
- **RNG:** Vault contents are rolled for each job, with odds shown and pity on rare trophies.
- **Economy:** Cash pays for rooms, gadgets and intel. Notoriety unlocks jobs.
- **Monetization:** Masks, outfits, van skins, hideout decor, season pass, VIP, private servers. Avoids: Criminal Simulator's "OP" passes (Forever God 1,599, Armored Truck Guaranteed 1,699), team revives and paid intel.
- **Retention:** D1: the next job. D7: a weekly elite contract. Long-term: a new site each month.
- **Viral Potential:** Botched-heist comedy, flawless stealth runs, hideout tours.
- **Development Difficulty:** Hard
- **Development Cost/Complexity:** Guard AI with vision cones and alert states, plus cameras and lasers. Lockpick and hack minigames. Jobs built from modules, hideout building, getaway chases.
- **CCU Potential:** Medium.
  - For: Criminal Simulator's early signal is strong (14.8 favorites per 1k visits, 92.1% likes), and co-op PvE keeps 62% of its CCU in veterans.
  - Against: Criminal Simulator is only 31 days old, so heists haven't yet proven they last.
  - Older players are a reported upside (18+ users are 29% of age-checked DAU).
- **Evidence anchors:** Criminal Simulator 38,113 (31 days); 13 Days to Escape 35,950 (30 days); DOORS 38,021 (2,065 days).

---

### 16. STYLE STREET

- **Genre:** Dress-up/Fashion; Skate/Parkour, Social/Hangout
- **Core Concept:** Style an outfit to a theme in 3 minutes, then skate a 60-second trick line through a street course. Players vote on Style (the outfit) and Flow (the tricks) separately, and a great line can rescue an average outfit. Ranked contests use one shared contest wardrobe, so nobody can buy a win. Owned items show off in Open rounds, free skate and the plaza.
- **Core Gameplay Loop:** Get theme → Style (3 min) → Trick line (60 s) → Vote Style + Flow → Drip + XP → Unlock clothes, tricks → Next round
- **First 10 Minutes:** 0:00–1:00: drop into a plaza on a board and grind a rail within 15 s, as the combo counter climbs and the crowd cheers. 1–3: a quick "Neon Night" styling. 3–5: a first round, with trick line and vote. 5–8: a second round, and a first trick unlocks. 8–10: the plaza photo booth, invite prompt.
- **Long-Term Progression:** 1 h: 6 tricks, ~40 items. 10 h: ~20 tricks, several boards, a style rank. 50+ h: signature combos, seasonal collections, crew showcases.
- **Social Features:** Plaza hangout, photo booth, crews, 1v1 style battles with friends.
- **PvP/PvE:** PvP contests judged by players; free skate.
- **Collection System:** Wardrobe, boards, trick list, poses.
- **RNG:** The theme draw only, which is shown.
- **Economy:** Drip buys clothes, tricks and boards. Weekly Tokens buy seasonal sets.
- **Monetization:** Clothing sets and boards for Open rounds and the plaza, season pass, VIP (wardrobe slots), private servers. Avoids: double votes (Catalog Avatar Runway's VIP), paid theme picks, and paid extra time (Dress To Impress sells +60 Seconds).
- **Retention:** D1: a new trick or theme. D7: a weekly themed contest. Long-term: seasonal collections, new streets.
- **Viral Potential:** Outfit screenshots, trick clips, style battles.
- **Development Difficulty:** Hard
- **Development Cost/Complexity:** A skate controller (grinds, manuals, flips), trick scoring, many layered-clothing assets, a dress-up UI, voting, phone controls.
- **CCU Potential:** Medium.
  - For: dress-up keeps 80% of its CCU in veterans, and skating adds a skill hook (Bike Universe pays cash for tricks).
  - Against: Dress To Impress owns theme contests.
  - Risk: fashion players and skate players may not overlap.
- **Evidence anchors:** Dress To Impress 98,231 (1,117 days); Catalog Avatar Creator 89,375 (1,954 days); Bike Universe 39,185 (42 days); Catalog Avatar Runway 31,892 (166 days).

---

### 17. CRYPTID CAMERA

- **Genre:** Adventure/Exploration; Collection, Photo
- **Core Concept:** 1–4 players explore swamp, forest, canyon and snowfield regions, assembled from modules for each trip, at dusk and night. They photograph cryptids for a scored Field Guide, where photos score on framing, distance, behaviour (feeding, nesting, fleeing) and rarity. Cryptids react to noise and light. Territorial ones knock you down so you drop film; they never kill. Players share a gallery and enter weekly contests.
- **Core Gameplay Loop:** Pick region → Track signs → Set up the shot → Photograph → Score in Field Guide → Film + XP → Better gear → New regions
- **First 10 Minutes:** 0:00–1:00: bushes rustle, and you snap a fleeing "Moss Hopper" within 30 s. The photo pops up with a star score. 1–3: learn to track footprints. 3–6: a nesting shot earns three stars. 6–8: a big cryptid charges, and you go flying. 8–10: submit a photo to the gallery, invite prompt.
- **Long-Term Progression:** 1 h: ~10 cryptids, 1 region. 10 h: 4 regions, ~40 cryptids, lenses. 50+ h: weekly legendary sightings, five-star completion, gallery fame.
- **Social Features:** Co-op trips, gallery likes, weekly contests with one vote per player, shared albums.
- **PvP/PvE:** PvE.
- **Collection System:** The Field Guide (cryptid × behaviour × stars), lenses, camera skins.
- **RNG:** Spawns in each region, with sighting odds shown and pity on legendaries.
- **Economy:** Film buys gear and bait. Fame earned in the gallery unlocks cosmetics.
- **Monetization:** Camera skins, outfits, photo frames and stickers, season pass, VIP, private servers. Avoids: paid bait luck, paid spawn rates and paid gallery boosts.
- **Retention:** D1: the next region. D7: the weekly contest and legendary sightings. Long-term: new regions and cryptids.
- **Viral Potential:** The photos are made to share. Charge clips and gallery highlights help too.
- **Development Difficulty:** Hard
- **Development Cost/Complexity:** Creature AI with states (graze, nest, flee, charge), regions built from modules, photo scoring (where the target sits in frame, its size, anything blocking it). Roblox can't save rendered images, so each photo is stored as camera position plus pose and redrawn in a ViewportFrame.
- **CCU Potential:** Low.
  - Collection is the most common tag (42 games).
  - But no photo game is in the Top 100, and Say Cheese! is a story game with a camera, not a collection loop.
- **Evidence anchors:** Say Cheese! [STORY] 19,162 (outside the Top 100, from the snapshot's candidate pull; created 2026-10-19, top-trending #11); Fisch 99,878 (collection built around a catalogue); DOORS 38,021 (memorable creature behaviour).

---

### 18. VOLT RACERS

- **Genre:** Racing/Vehicle; Physics/Ragdoll, Customization
- **Core Concept:** 8-player arcade races of 60–120 s on short tracks with boost pads, ramps and shortcuts. Crashes throw your driver out as a ragdoll, and you are back on the track in 2 s. A garage offers paint, decals, wheels and horns, but every car in a class has the same stats. Weekly cups run in brackets.
- **Core Gameplay Loop:** Queue → Race (90 s) → Boost / drift / crash → Place → Volts + XP → Garage → Weekly cup → Requeue
- **First 10 Minutes:** 0:00–1:00: racing within 15 s of joining, with no menus; a drift, a boost and a ragdoll crash all come on lap one. 1–3: finish the first race. 3–5: paint your car. 5–8: two more races, and a second class unlocks. 8–10: a weekly-cup teaser, invite prompt.
- **Long-Term Progression:** 1 h: 2 classes, ~10 tracks. 10 h: 4 classes, ranked. 50+ h: cup trophies, track mastery, seasonal car bodies.
- **Social Features:** Party queue, private lobbies, a car-meet lobby, photo mode.
- **PvP/PvE:** PvP; bots fill gaps.
- **Collection System:** Car bodies (same stats within a class), decals, wheels, horns, trophies.
- **RNG:** None.
- **Economy:** Volts buy cosmetics. Cup Tokens buy trophy-tier items.
- **Monetization:** Car bodies, cosmetics, season pass, VIP, private servers. Avoids: buyable faster cars (flagged at Driving Empire), paid engines (Tesla Roadster Chase) and crates.
- **Retention:** D1: the next class. D7: the weekly cup. Long-term: seasons, tracks.
- **Viral Potential:** Crash clips, photo finishes.
- **Development Difficulty:** Hard
- **Development Cost/Complexity:** Arcade car physics simulated on each player's device and checked by the server. Smoothing so rival cars don't jump around, ragdoll ejects, tracks, matchmaking.
- **CCU Potential:** Low.
  - No pure competitive racer is in the Top 100. Vehicle games there are open-world or chases, and Racing/Vehicle keeps only 34% of its CCU in veterans.
  - The missing racer reads as a warning, not a gap.
- **Evidence anchors:** Tesla Roadster Chase 23,857 (18 days); Bike Universe 39,185 (42 days); Driving Empire 35,862 (2,695 days); Turbo Soccer 32,156 (50 days, cars as a sport).

---

### 19. SIEGE SQUAD

- **Genre:** Strategy (reverse tower defense); Co-op PvE, Collection
- **Core Concept:** 1–4 players attack an AI fortress full of towers, walls and traps. Each player sends units down lanes from a deck of 6 units plus 1 hero, and fires hero abilities. Units next to each other combine, even across teammates; for example, Shield next to Archer forms a Testudo. The goal is to break the fortress core within 5 minutes. Units unlock along a track you choose, never from summons.
- **Core Gameplay Loop:** Pick fortress → Build deck → Deploy and combine → Hero abilities → Breach core → Gold + XP → Unlock and upgrade units → Harder fortresses
- **First 10 Minutes:** 0:00–1:00: tap to send 3 knights at a wooden gate, which breaks in ~20 s. 1–3: a first hero ability (Battering Ram). 3–6: a full fortress, with a player or bot ally. 6–8: pick a second unit from 2 choices. 8–10: a first combo, invite prompt.
- **Long-Term Progression:** 1 h: 8 units, 1 hero, 5 fortresses. 10 h: ~25 units, 4 heroes, hard mode, a combo codex. 50+ h: nightmare fortresses, weekly siege leaderboards, unit mastery.
- **Social Features:** Co-op parties, combos between teammates, shared leaderboards.
- **PvP/PvE:** PvE at launch. A possible later mode: players build fortresses for others to attack.
- **Collection System:** Units, heroes, banners, a combo codex.
- **RNG:** Weekly fortress modifiers, shown openly. No summons.
- **Economy:** Gold pays for unit upgrades. Banner Tokens buy cosmetics.
- **Monetization:** Unit and hero skins, banners, season pass, VIP, private servers. Avoids: summons and trait rerolls (Anime Adventures, rated high pay-to-win), towers sold outright (TDS sells them up to 2,249), and luck boosts (Cameraman TD).
- **Retention:** D1: the next unit. D7: the weekly siege. Long-term: new fortresses and heroes.
- **Viral Potential:** Big breaches, combo discoveries, speedrun boards.
- **Development Difficulty:** Hard
- **Development Cost/Complexity:** Lanes keep pathing cheap. The combat simulation runs on the server. Fortress AI, many unit models and animations, balance work.
- **CCU Potential:** Medium.
  - For: TD lasts (3 games, 175,932 CCU, 77% veteran share).
  - Against: reverse TD is unproven, with no Top-100 example. TD's current hits sell their anime or meme collections through gacha, so dropping gacha may cut both revenue and appeal.
- **Evidence anchors:** Anime Adventures 107,301 (1,783 days); Cameraman Tower Defense 41,055 (74 days, 98.4% likes); Tower Defense Simulator 27,576 (2,713 days); BedWars 32,760 (1,991 days, attack-the-base goal).

---

### 20. HOMEROOM

- **Genre:** Roleplay/Life; Party/Minigames
- **Core Concept:** A school campus that runs on a bell schedule. Each class is a 5-minute team minigame: potion-mixing in Chemistry, dodgeball in PE, draw-and-guess in Art, a quiz race in History. Between bells, players roleplay freely. Students belong to one of four Houses that earn points in every class, and a weekly House Cup decides the winner. Evermore High focuses on fashion and dorms; Homeroom's hook is classes as party games plus House rivalry.
- **Core Gameplay Loop:** Bell → Class minigame → House points + grades → Free-period roleplay → Spend allowance → House Cup → Repeat
- **First 10 Minutes:** 0:00–1:00: get sorted into a House with a big reveal, and the first class starts within 30 s. 1–6: two classes. 6–8: a free period: decorate your locker, roleplay in the halls. 8–10: House standings, and an invite (friends in a party share a House).
- **Long-Term Progression:** 1 h: 5 classes, locker items. 10 h: clubs, a dorm, the prefect role. 50+ h: graduation through years 1–4 (a prestige loop), the yearbook, House Captain elections.
- **Social Features:** Houses, clubs, yearbook photos, dorm visits, free roleplay.
- **PvP/PvE:** Light House-vs-House class competition; no combat.
- **Collection System:** Outfits, locker and dorm decor, yearbook badges, class trophies.
- **RNG:** None.
- **Economy:** Allowance buys outfits and decor. House points count for the team.
- **Monetization:** Outfits, dorm packs, season pass, VIP (a bigger dorm), private servers for roleplay groups. Avoids: House-point boosts, paid grades, and timer skips like those in Raise The Biggest Family.
- **Retention:** D1: the next class unlocks. D7: the House Cup. Long-term: terms and events (prom, sports day).
- **Viral Potential:** Class minigame clips, yearbook screenshots, House rivalry.
- **Development Difficulty:** Hard
- **Development Cost/Complexity:** A campus map and many small minigames, roleplay tools, a bell scheduler, dorms, lots of clothing assets.
- **CCU Potential:** Low sustained.
  - Roleplay depends on friends already playing, and keeps 88% of its CCU in veterans.
  - Evermore High is a fresh, direct incumbent: 42,628 CCU at 47 days, with 10.03 favorites per 1k visits.
- **Evidence anchors:** Evermore High 42,628 (47 days); Raise The Biggest Family 27,844 (26 days); Brookhaven 641,419 (2,392 days); Berry Avenue 111,566 (1,765 days).

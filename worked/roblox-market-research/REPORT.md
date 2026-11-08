**The short version.**

- **The data:** the current Top 100 come straight from Roblox's own APIs (players right
  now, visits, favorites, likes, age, every pass and product). Five analysts studied each
  game, and the result was turned into 20 original concepts, scored and ranked.
- **The pattern:** today's biggest player counts sit in trend waves ("steal a…", +1
  incrementals, egg tycoons) that collapse about 99% after their peak. Grow a Garden
  reportedly peaked near 22M players; at the snapshot it had 19,677 and missed the Top 100.
- **What lasts:** social, competitive skill games and co-op survival. In those genres,
  games over a year old hold 62–95% of the genre's players.
- **Best concept:** **CRUMBLE CREW**, a 1–4 player co-op physics extraction game. Carry
  valuables out of a collapsing, randomly built building before it falls. It sits in a
  durable, rising genre, uses this month's physics-clip hook with real goals, works with
  few players, earns without pay-to-win, and is a Medium build for a small team.
- **Labels used throughout:** **verified** = Roblox's data; **reported** = third-party
  source; **analysis** = our inference.


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

| # | Game | Genres (analysis) | Mode | CCU | Visits | Favorites | Like % | Age (days) | Trajectory | Dev difficulty |
|---|---|---|---|---|---|---|---|---|---|---|
| 1 | [Steal An Egg](https://www.roblox.com/games/107778070777162) | Steal/Raid, Pet/Creature, Tycoon | Mixed | 967,419 | 10.80B | 9.6M | 91.4 | 106 | new breakout | Medium |
| 2 | [Brookhaven 🏡RP](https://www.roblox.com/games/4924922222) | Roleplay/Life, Social/Hangout, Sandbox | Social | 641,419 | 89.34B | 30.9M | 85.9 | 2392 | stable veteran | Hard |
| 3 | [Murder Mystery 2](https://www.roblox.com/games/142823291) | Social Deduction, Asymmetric 1vX, Collection | PvP | 445,264 | 32.15B | 24.8M | 90.8 | 4677 | stable veteran | Medium |
| 4 | [[🎃] Blox Fruits](https://www.roblox.com/games/2753915549) | RPG/Anime RPG, Adventure, Battlegrounds/Fighting | Mixed | 348,128 | 65.37B | 20.2M | 92.3 | 2853 | stable veteran | Very Hard |
| 5 | [[⚡] Adopt Me!](https://www.roblox.com/games/920587237) | Pet/Creature, Roleplay/Life, Collection | Social | 264,794 | 45.36B | 29.9M | 86.4 | 3403 | stable veteran | Very Hard |
| 6 | [Throw Food For Animals](https://www.roblox.com/games/120219252362013) | Simulator, Incremental, Pet/Creature | Single-player-in-server | 245,021 | 120.7M | 126k | 94.4 | 50 | new breakout | Easy |
| 7 | [RIVALS](https://www.roblox.com/games/17625359962) | Shooter/FPS, Collection | PvP | 211,924 | 19.22B | 97.1M | 93.6 | 896 | stable veteran | Hard |
| 8 | [99 Nights in the Forest 🔦](https://www.roblox.com/games/79546208627805) | Survival, Horror, Escape/Co-op PvE | Co-op PvE | 210,110 | 30.46B | 10.2M | 90.5 | 614 | declining veteran | Hard |
| 9 | [🌙 Dandy's World [ALPHA]](https://www.roblox.com/games/16116270224) | Horror, Escape/Co-op PvE, Survival | Co-op PvE | 155,916 | 7.92B | 4.8M | 88.3 | 1017 | stable veteran | Hard |
| 10 | [[UPD 🎃] Forsaken](https://www.roblox.com/games/18687417158) | Asymmetric 1vX, Horror, Survival | PvP | 150,992 | 5.92B | 3.3M | 84.4 | 833 | stable veteran | Hard |
| 11 | [[🎃] Jujutsu Shenanigans](https://www.roblox.com/games/9391468976) | Battlegrounds/Fighting, Physics/Ragdoll, Sandbox | PvP | 134,497 | 7.91B | 3.2M | 86.3 | 1666 | stable veteran | Hard |
| 12 | [DONT SPLASH](https://www.roblox.com/games/119958473240233) | Horror, Obby/Platformer, Escape/Co-op PvE | Mixed | 119,263 | 248.5M | 609k | 86.5 | 22 | new breakout | Medium |
| 13 | [Berry Avenue 🏠 RP](https://www.roblox.com/games/8481844229) | Roleplay/Life, Social/Hangout, Dress-up/Fashion | Social | 111,566 | 8.95B | 3.7M | 86.0 | 1765 | stable veteran | Medium |
| 14 | [[☀️UPD 21🏖️] Anime Adventures](https://www.roblox.com/games/8304191830) | Tower Defense, RNG/Gacha, Collection | Co-op PvE | 107,301 | 2.59B | 2.1M | 92.1 | 1783 | rising | Hard |
| 15 | [[💀] Steal a Brainrot](https://www.roblox.com/games/109983668079237) | Steal/Raid, Meme/Trend, Tycoon | PvP | 101,425 | 74.40B | 29.7M | 85.1 | 541 | declining veteran | Medium |
| 16 | [Fisch 🦈 [HAMMI]](https://www.roblox.com/games/16732694052) | Fishing, Simulator, Collection | Single-player-in-server | 99,878 | 5.12B | 3.7M | 90.8 | 970 | stable veteran | Hard |
| 17 | [[🎃] Dress To Impress](https://www.roblox.com/games/15101393044) | Dress-up/Fashion, Party/Minigames, Social/Hangout | Mixed | 98,231 | 11.32B | 7.7M | 90.5 | 1117 | stable veteran | Hard |
| 18 | [Break and Steal an Egg](https://www.roblox.com/games/114326934417838) | Steal/Raid, Tycoon, Pet/Creature | Single-player-in-server | 94,754 | 388.4M | 764k | 97.1 | 63 | new breakout | Easy |
| 19 | [Catalog Avatar Creator](https://www.roblox.com/games/7041939546) | Avatar/Shopping, Dress-up/Fashion, Social/Hangout | Social | 89,375 | 8.27B | 6.0M | 93.7 | 1954 | stable veteran | Medium |
| 20 | [[ALPHA] Practical Basketball](https://www.roblox.com/games/80681221431821) | Sports, Social/Hangout | PvP | 85,889 | 126.6M | 167k | 92.9 | 574 | rising | Very Hard |
| 21 | [[⭐UPD] Survive Your Ideas](https://www.roblox.com/games/77900175935766) | Survival, Party/Minigames, Meme/Trend | Mixed | 76,341 | 25.8M | 61k | 85.1 | 32 | new breakout | Hard |
| 22 | [[💀DUELS] Murderers VS Sheriffs](https://www.roblox.com/games/135856908115931) | Shooter/FPS, Battlegrounds/Fighting, Collection | PvP | 74,521 | 2.06B | 16.7M | 86.5 | 637 | stable veteran | Medium |
| 23 | [[HALLOWEEN] The Strongest Battlegrounds](https://www.roblox.com/games/10449761463) | Battlegrounds/Fighting, Physics/Ragdoll | PvP | 73,079 | 19.61B | 7.8M | 83.7 | 1559 | stable veteran | Very Hard |
| 24 | [Ragdoll Physics 🩸](https://www.roblox.com/games/121868512253414) | Physics/Ragdoll, Sandbox, Meme/Trend | Single-player-in-server | 71,776 | 18.8M | 87k | 90.6 | 26 | new breakout | Easy |
| 25 | [Attack on Titan Revolution](https://www.roblox.com/games/13379208636) | RPG/Anime RPG, RNG/Gacha, Collection | Co-op PvE | 69,469 | 1.21B | 1.6M | 95.9 | 1280 | stable veteran | Very Hard |
| 26 | [[UPD] Volleyball Legends](https://www.roblox.com/games/73956553001240) | Sports, RNG/Gacha, Collection | PvP | 68,120 | 4.11B | 5.9M | 95.1 | 691 | stable veteran | Hard |
| 27 | [[🌙UPD] Fish It! 🐟](https://www.roblox.com/games/121864768012064) | Fishing, Collection, RNG/Gacha | Single-player-in-server | 67,690 | 4.82B | 1.3M | 82.8 | 748 | declining veteran | Medium |
| 28 | [LifeTogether 🏠 RP](https://www.roblox.com/games/13967668166) | Roleplay/Life, Social/Hangout, Avatar/Shopping | Social | 64,889 | 4.11B | 16.2M | 90.3 | 1221 | stable veteran | Medium |
| 29 | [🎭 [MINIGAMES] Pet Simulator 99! 🎃](https://www.roblox.com/games/8737899170) | Pet/Creature, Collection, RNG/Gacha | Single-player-in-server | 60,441 | 2.70B | 2.2M | 94.7 | 1737 | declining veteran | Very Hard |
| 30 | [[GAMEMODES!] Illegal Soccer](https://www.roblox.com/games/126987974021910) | Sports, Physics/Ragdoll, Party/Minigames | PvP | 56,912 | 301.0M | 342k | 86.6 | 180 | rising | Hard |
| 31 | [[WEEK 3 🎃 x BUTCHER] Violence District](https://www.roblox.com/games/93978595733734) | Asymmetric 1vX, Horror, Survival | PvP | 54,098 | 1.70B | 1.8M | 92.9 | 738 | stable veteran | Hard |
| 32 | [Sweep The Moon 🌕](https://www.roblox.com/games/109576450376407) | Incremental, Simulator, Tycoon | Co-op PvE | 53,136 | 3.6M | 32k | 97.5 | 16 | new breakout | Medium |
| 33 | [[🎃HLWN🎃] Evade](https://www.roblox.com/games/9872472334) | Survival, Obby/Platformer, Horror | Co-op PvE | 51,605 | 9.46B | 8.8M | 93.9 | 1611 | declining veteran | Hard |
| 34 | [[⚔️UPD] +1 Venom Evolution](https://www.roblox.com/games/116448925875915) | Incremental, Simulator, Meme/Trend | Single-player-in-server | 48,926 | 51.5M | 230k | 96.9 | 34 | new breakout | Medium |
| 35 | [Evermore High 🦢](https://www.roblox.com/games/138636753681976) | Roleplay/Life, Dress-up/Fashion, Social/Hangout | Social | 42,628 | 13.3M | 133k | 92.5 | 47 | new breakout | Hard |
| 36 | [[RANKED] Huss Valley](https://www.roblox.com/games/107535308163741) | Party/Minigames, Asymmetric 1vX, Battlegrounds/Fighting | PvP | 42,247 | 257.0M | 386k | 87.5 | 69 | rising | Medium |
| 37 | [[💎] Sell Fries! [Anomaly] 🍟](https://www.roblox.com/games/94891079210424) | Tycoon, Horror, Survival | Mixed | 41,783 | 109.4M | 237k | 85.1 | 48 | rising | Medium |
| 38 | [[🌟FIX] Cameraman Tower Defense](https://www.roblox.com/games/132929771812494) | Tower Defense, RNG/Gacha, Collection | Co-op PvE | 41,055 | 105.2M | 261k | 98.4 | 74 | rising | Medium |
| 39 | [Fling Things and People](https://www.roblox.com/games/6961824067) | Physics/Ragdoll, Sandbox, Social/Hangout | Mixed | 40,058 | 3.72B | 2.6M | 80.4 | 1971 | stable veteran | Medium |
| 40 | [[🌎2] Tap Simulator REBORN](https://www.roblox.com/games/72858262610964) | Incremental, Simulator, Pet/Creature | Single-player-in-server | 40,002 | 46.7M | 170k | 93.7 | 96 | rising | Easy |
| 41 | [Tower of Hell](https://www.roblox.com/games/1962086868) | Obby/Platformer | Single-player-in-server | 39,364 | 29.39B | 12.1M | 73.6 | 3064 | stable veteran | Medium |
| 42 | [🚨[QUADS] Bike Universe](https://www.roblox.com/games/98628861455414) | Racing/Vehicle, Simulator, Collection | Social | 39,185 | 78.3M | 148k | 88.5 | 42 | new breakout | Hard |
| 43 | [[🐉UPD 11 PART 1🎃] King Legacy](https://www.roblox.com/games/4520749081) | RPG/Anime RPG, Adventure, Battlegrounds/Fighting | Mixed | 38,750 | 4.08B | 2.8M | 91.5 | 2518 | stable veteran | Very Hard |
| 44 | [[🏘️CITY] Criminal Simulator 💰](https://www.roblox.com/games/83048653078891) | Escape/Co-op PvE, Steal/Raid, Simulator | Co-op PvE | 38,113 | 17.4M | 257k | 92.1 | 31 | new breakout | Hard |
| 45 | [DOORS 🍬🍭](https://www.roblox.com/games/6516141723) | Horror, Escape/Co-op PvE, Survival | Co-op PvE | 38,021 | 8.01B | 8.4M | 93.1 | 2065 | stable veteran | Very Hard |
| 46 | [[🎩] Ragdoll Research](https://www.roblox.com/games/135264274035761) | Physics/Ragdoll, Sandbox, Meme/Trend | Single-player-in-server | 36,674 | 8.8M | 263k | 80.5 | 11 | new breakout | Hard |
| 47 | [Bee Swarm Simulator](https://www.roblox.com/games/1537690962) | Simulator, Incremental, Pet/Creature | Single-player-in-server | 36,593 | 4.65B | 6.6M | 95.6 | 3154 | stable veteran | Very Hard |
| 48 | [[X3] +1 Speed Keyboard Escape / Candy & Chocolate](https://www.roblox.com/games/95082159892680) | Incremental, Obby/Platformer, Simulator | Single-player-in-server | 36,572 | 6.68B | 7.3M | 96.7 | 294 | stable | Easy |
| 49 | [Sol's RNG [ Halloween Event 🎃]](https://www.roblox.com/games/15532962292) | RNG/Gacha, Collection, Incremental | Single-player-in-server | 36,269 | 2.28B | 1.0M | 91.4 | 1071 | stable veteran | Medium |
| 50 | [13 Days to Escape [ALPHA]](https://www.roblox.com/games/134117451433332) | Escape/Co-op PvE, Survival, Horror | Co-op PvE | 35,950 | 7.3M | 30k | 76.8 | 30 | new breakout | Hard |
| 51 | [Driving Empire [🏁NASCAR Championship Weekend🏁]](https://www.roblox.com/games/3351674303) | Racing/Vehicle, Roleplay/Life, Collection | Social | 35,862 | 3.43B | 31.8M | 93.0 | 2695 | stable veteran | Very Hard |
| 52 | [Kukirin Life [Testing]](https://www.roblox.com/games/122840796290491) | Racing/Vehicle, Roleplay/Life, Collection | Social | 35,753 | 88.4M | 697k | 86.7 | 49 | new breakout | Medium |
| 53 | [Flee the Facility](https://www.roblox.com/games/893973440) | Asymmetric 1vX, Horror, Survival | PvP | 34,887 | 6.15B | 9.8M | 92.1 | 3417 | stable veteran | Medium |
| 54 | [[👻EVENT] Dead Rails](https://www.roblox.com/games/116495829188952) | Survival, Escape/Co-op PvE, Shooter/FPS | Co-op PvE | 34,801 | 6.65B | 6.2M | 92.5 | 675 | declining veteran | Hard |
| 55 | [obby but you get smaller every stage](https://www.roblox.com/games/133466274094328) | Obby/Platformer, Meme/Trend | Single-player-in-server | 34,607 | 12.4M | 30k | 33.4 | 538 | new breakout | Easy |
| 56 | [Bug Evolution [🦟]](https://www.roblox.com/games/70650894743738) | Survival, Simulator, Pet/Creature | Mixed | 33,809 | 29.8M | 113k | 82.2 | 30 | new breakout | Medium |
| 57 | [[UPD5 ✨] Depth Incremental](https://www.roblox.com/games/119101118479978) | Incremental, RNG/Gacha, Collection | Single-player-in-server | 33,750 | 9.1M | 162k | 96.4 | 31 | new breakout | Medium |
| 58 | [[UPD1]⚽ Be a Soccer Legend](https://www.roblox.com/games/92316656787977) | Sports, Collection | Single-player-in-server | 32,852 | 4.7M | 30k | 95.8 | 26 | new breakout | Medium |
| 59 | [[🔥2X XP] BedWars](https://www.roblox.com/games/6872265039) | Battlegrounds/Fighting, Strategy, Party/Minigames | PvP | 32,760 | 11.83B | 4.7M | 82.3 | 1991 | stable veteran | Very Hard |
| 60 | [[🧪NEW LAB] Fatal Baboons](https://www.roblox.com/games/93660722909304) | Horror, Escape/Co-op PvE, Survival | Co-op PvE | 32,719 | 23.6M | 689k | 88.0 | 82 | new breakout | Medium |
| 61 | [Turbo Soccer [BETA]](https://www.roblox.com/games/101880234193261) | Sports, Racing/Vehicle, Physics/Ragdoll | PvP | 32,156 | 164.8M | 211k | 92.4 | 50 | new breakout | Hard |
| 62 | [🎃 Catalog Avatar Runway](https://www.roblox.com/games/97577741629233) | Dress-up/Fashion, Avatar/Shopping, Social/Hangout | Social | 31,892 | 78.3M | 247k | 92.2 | 166 | rising | Medium |
| 63 | [[D4C] A Bizarre Run](https://www.roblox.com/games/108055619068945) | Racing/Vehicle, Battlegrounds/Fighting, RPG/Anime RPG | PvP | 31,218 | 18.7M | 73k | 97.6 | 242 | rising | Hard |
| 64 | [🦖 Creatures of Sonaria ✨ Survive Kaiju Animals](https://www.roblox.com/games/5233782396) | Survival, Pet/Creature, Collection | Mixed | 30,438 | 2.29B | 11.5M | 92.3 | 2327 | stable veteran | Very Hard |
| 65 | [[👥UPD] Ragdoll Playground](https://www.roblox.com/games/106521346673466) | Physics/Ragdoll, Sandbox | Single-player-in-server | 30,314 | 20.7M | 811k | 94.8 | 41 | new breakout | Hard |
| 66 | [Dubai 🏡 RP [Newborns! 👶]](https://www.roblox.com/games/122485613019196) | Roleplay/Life, Social/Hangout | Social | 30,061 | 322.4M | 1.1M | 89.4 | 729 | stable veteran | Medium |
| 67 | [[🔥NEW MYTHIC] Hypershot](https://www.roblox.com/games/17516596118) | Shooter/FPS, RNG/Gacha, Collection | PvP | 30,020 | 1.42B | 24.0M | 94.4 | 905 | stable veteran | Hard |
| 68 | [Realistic Street Soccer](https://www.roblox.com/games/14315258385) | Sports | PvP | 29,640 | 1.78B | 855k | 84.6 | 1191 | stable veteran | Medium |
| 69 | [[🐬] Welcome to Bloxburg](https://www.roblox.com/games/185655149) | Roleplay/Life, Sandbox, Social/Hangout | Social | 29,535 | 10.16B | 14.0M | 88.5 | 4387 | stable veteran | Very Hard |
| 70 | [+1 Spider Arm🕷️](https://www.roblox.com/games/117734411290994) | Incremental, Obby/Platformer, Simulator | Single-player-in-server | 29,472 | 41.5M | 184k | 97.4 | 19 | new breakout | Medium |
| 71 | [Dreamville 🏡 RP [Pets! 😺]](https://www.roblox.com/games/74395953411817) | Roleplay/Life, Social/Hangout, Pet/Creature | Social | 29,059 | 405.4M | 685k | 94.7 | 792 | stable veteran | Medium |
| 72 | [Can You Pass A Driving Test?](https://www.roblox.com/games/91652462379782) | Racing/Vehicle, Simulator, Collection | Single-player-in-server | 28,967 | 10.9M | 30k | 83.6 | 21 | new breakout | Medium |
| 73 | [MOUSE 🐭](https://www.roblox.com/games/81688312343760) | Horror, Escape/Co-op PvE, Survival | Co-op PvE | 28,559 | 16.0M | 92k | 84.5 | 34 | new breakout | Medium |
| 74 | [[🧪] Fake an Egg](https://www.roblox.com/games/97289366402005) | Steal/Raid, Social Deduction, Pet/Creature | Mixed | 28,358 | 72.3M | 96k | 88.2 | 35 | new breakout | Medium |
| 75 | [Raise The Biggest Family](https://www.roblox.com/games/89537559330901) | Roleplay/Life, Tycoon, Incremental | Single-player-in-server | 27,844 | 19.0M | 1.8M | 73.5 | 26 | new breakout | Easy |
| 76 | [BlockSpin 🔪](https://www.roblox.com/games/104715542330896) | Shooter/FPS, Roleplay/Life, Battlegrounds/Fighting | Mixed | 27,824 | 1.34B | 1.0M | 78.9 | 732 | stable veteran | Hard |
| 77 | [[DUELS⚔️] Deagle Arena](https://www.roblox.com/games/84556640895285) | Shooter/FPS, RNG/Gacha, Collection | PvP | 27,737 | 301.9M | 10.0M | 87.4 | 203 | unclear | Medium |
| 78 | [Tower Defense Simulator](https://www.roblox.com/games/3260590327) | Tower Defense, Strategy, Collection | Co-op PvE | 27,576 | 5.07B | 3.5M | 94.1 | 2713 | stable veteran | Hard |
| 79 | [[🎉UPD 11] Anime Dice](https://www.roblox.com/games/113290951185459) | RNG/Gacha, Incremental, Collection | Single-player-in-server | 27,219 | 168.4M | 204k | 99.0 | 85 | new breakout | Easy |
| 80 | [PINKIE PROMISE [HORROR]](https://www.roblox.com/games/75815532269840) | Horror, Story, Escape/Co-op PvE | Co-op PvE | 26,946 | 19.6M | 290k | 94.4 | 33 | new breakout | Medium |
| 81 | [a dusty trip [🚗CAR]](https://www.roblox.com/games/16389395869) | Survival, Racing/Vehicle, Adventure | Mixed | 26,393 | 2.62B | 2.4M | 90.0 | 996 | stable veteran | Medium |
| 82 | [[🦑] Squid Game X](https://www.roblox.com/games/7554888362) | Party/Minigames, Survival, Obby/Platformer | Mixed | 26,099 | 2.36B | 2.0M | 93.7 | 1870 | stable veteran | Medium |
| 83 | [🧸 My Small Business](https://www.roblox.com/games/136468592163527) | Tycoon, Simulator, Roleplay/Life | Single-player-in-server | 25,470 | 26.0M | 172k | 95.8 | 22 | new breakout | Medium |
| 84 | [Animal Hospital (Anomaly) 🧪](https://www.roblox.com/games/78515283254292) | Horror, Survival, Escape/Co-op PvE | Co-op PvE | 25,392 | 2.51B | 3.3M | 92.9 | 182 | declining veteran | Medium |
| 85 | [[🎃] Ragdoll Sandbox](https://www.roblox.com/games/113398609378596) | Physics/Ragdoll, Sandbox, Meme/Trend | Single-player-in-server | 25,235 | 15.0M | 514k | 86.5 | 23 | new breakout | Medium |
| 86 | [صيد الضبّان](https://www.roblox.com/games/82347957379349) | Simulator, Collection, Pet/Creature | Co-op PvE | 24,836 | 47.2M | 89k | 94.9 | 36 | new breakout | Medium |
| 87 | [The Forge [🪽x👹]](https://www.roblox.com/games/76558904092080) | RPG/Anime RPG, Simulator, Collection | Co-op PvE | 24,693 | 1.05B | 1.1M | 94.4 | 547 | declining veteran | Hard |
| 88 | [RoWorld [World PvP]](https://www.roblox.com/games/137151641329864) | Strategy | PvP | 24,557 | 106.8M | 105k | 83.4 | 43 | rising | Hard |
| 89 | [Emergency Hamburg](https://www.roblox.com/games/7711635737) | Roleplay/Life, Racing/Vehicle, Social/Hangout | Mixed | 24,530 | 1.48B | 1.2M | 86.0 | 1854 | stable veteran | Hard |
| 90 | [[UPD] Tesla Roadster Chase](https://www.roblox.com/games/122379697375766) | Racing/Vehicle, Steal/Raid, Meme/Trend | Single-player-in-server | 23,857 | 19.7M | 43k | 86.2 | 18 | new breakout | Medium |
| 91 | [Mukbang Game [Testing]🫓🍲!](https://www.roblox.com/games/74188431054457) | Social/Hangout, Roleplay/Life, Meme/Trend | Social | 23,801 | 580.5M | 1.2M | 92.6 | 220 | stable veteran | Easy |
| 92 | [[🚧CONSTRUCTION] Southern Mudding 🚜 OffRoading](https://www.roblox.com/games/79480724066456) | Racing/Vehicle, Sandbox, Roleplay/Life | Social | 23,468 | 490.7M | 706k | 92.5 | 419 | stable veteran | Medium |
| 93 | [Piggy [X2 SEASON XP]](https://www.roblox.com/games/4623386862) | Horror, Asymmetric 1vX, Escape/Co-op PvE | Mixed | 23,381 | 14.46B | 12.3M | 90.3 | 2481 | stable veteran | Medium |
| 94 | [[UPD] Realistic Ragdoll Engine 🩸](https://www.roblox.com/games/81230874545623) | Physics/Ragdoll, Sandbox, Meme/Trend | Single-player-in-server | 23,362 | 37.6M | 669k | 87.8 | 26 | new breakout | Medium |
| 95 | [[UPDATE 2.0] 30 Floors Up](https://www.roblox.com/games/124063493943486) | Survival, Escape/Co-op PvE, Horror | Co-op PvE | 23,154 | 5.2M | 28k | 74.3 | 14 | new breakout | Hard |
| 96 | [[🏁] Steal A Pet And Ride It!](https://www.roblox.com/games/95168737547508) | Steal/Raid, Pet/Creature, RNG/Gacha | Mixed | 22,676 | 32.7M | 62k | 94.6 | 35 | rising | Medium |
| 97 | [[FPS] One Tap](https://www.roblox.com/games/90568084448279) | Shooter/FPS, RNG/Gacha, Collection | PvP | 22,596 | 673.8M | 755k | 87.9 | 339 | stable veteran | Medium |
| 98 | [[ZOMBIES!] BloxStrike](https://www.roblox.com/games/114234929420007) | Shooter/FPS, Strategy, RNG/Gacha | PvP | 22,344 | 337.6M | 1.3M | 94.6 | 554 | stable veteran | Very Hard |
| 99 | [Cut a Rock](https://www.roblox.com/games/113742027864370) | Incremental, Simulator, Collection | Single-player-in-server | 21,922 | 10.8M | 34k | 94.2 | 54 | rising | Easy |
| 100 | [Blade Ball](https://www.roblox.com/games/13772394625) | Battlegrounds/Fighting, Party/Minigames, Sports | PvP | 21,851 | 6.53B | 13.1M | 93.5 | 1240 | declining veteran | Medium |


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


## 5. Twenty original concepts

Each concept combines mechanics proven in the Top 100. None is a copy of a single game.
CCU potential uses one scale for all 20: the likely player count 90+ days after launch
with solid execution.

| Rating | Players online |
|---|---|
| Low | below the #100 floor of 21,851 |
| Medium | about 22k–50k |
| High | 50k–150k |
| Very High | 150k+ |

Ethics rules for all of them: no pay-to-win in PvP, no energy timers or paid skips of
friction we added, and RNG only as earned rolls with shown odds (plus a PolicyService
alternative if Robux are involved).

### 1. CRUMBLE CREW

- **Genre:** Co-op PvE extraction (primary); physics comedy, collection, light survival
  (secondary).
- **Core Concept:** You and up to three friends are a salvage crew. A condemned building is
  about to collapse, and you have a few minutes to carry its valuables out to your truck:
  a piano, a vase, a suit of armour. Heavy things need two people, fragile things break
  when you drop them, and the floor is cracking. Every run is a fresh, randomly assembled
  building.
- **Core Gameplay Loop:** Pick contract → drop into a new building → scout and grab →
  carry together (physics) → dodge collapses and nuisances → load the truck before it
  falls → payout, Artifacts → upgrade tools and truck, unlock sites → repeat.
- **First 10 Minutes:**
  - **0:00–0:10:** You spawn holding a vase in Grandma's front hall. The truck is 20
    studs away and the floor creaks.
  - **0:10–1:30:** Carry it out for +$120. Then grab a grandfather clock that's too heavy
    for one; a bot crewmate (or your friend) takes the other end. A ceiling section falls
    behind you. Escape and get the first "HAUL RECEIPT".
  - **2–5:** In the Depot, you get the free starter Dolly. Take the first real contract
    (Small, 6 min) with the quota shown as a bar.
  - **5–10:** The second run is a new layout. The first Artifact drops (guaranteed Rare)
    and is placed in your museum. Daily quests and the invite prompt unlock.
- **Long-Term Progression:**
  - **1 hour:** tools up to tier II, the second site (Sinking Cruise Ship), first daily quests done.
  - **10 hours:** 4 sites, truck tier III, a Crew Pass track, half a site's Artifact
    catalog, and Large contracts with a boss finale.
  - **50+ hours:** all sites at mastery stars, full catalogs, a museum showcase ranked
    weekly, Crew Licenses (prestige), seasonal sites.
- **Social Features:**
  - Parties and invites with launch data; a friend crew bonus (+10% cash).
  - Two-person carries, revives and pings.
  - Spectate while downed.
  - Visitable museums with likes, and a screenshot-ready haul receipt.
- **PvP/PvE:** PvE only at launch.
  - Nuisances knock you down or make you drop items but never kill you. A crewmate
    revives you, or you get up after 10 s.
  - "Rival Crews" (opt-in later): two crews race through one building. No attacks;
    the opponent's unloaded pile can be swiped.
- **Collection System:**
  - Each site has 12 named Artifacts plus an item catalog.
  - Completion pays titles, museum plaques and a site-themed cosmetic.
  - The museum turns the collection into something others see.
- **RNG:**
  - Artifacts roll on the server when the crew loads certain containers (safes, crates).
  - Odds are shown in the catalog, with a pity counter: a Rare+ is guaranteed every 8
    runs, and a Legendary per site every 60.
  - Earned only, never sold.
- **Economy:**
  - **Cash** (earned): spent on tools, truck upgrades, site permits and museum wings.
  - **Tokens** (weekly contracts and the Crew Pass, earned only): cosmetics.
  - Robux buy cosmetics and convenience. No Cash packs at launch (protects progression).
- **Monetization:**
  - **Crew Pass** (seasonal, cosmetics + Tokens).
  - **Cosmetics:** suits, gloves, hats, truck paints, horn sounds.
  - **VIP:** name tag, gold museum frame, +1 daily Token.
  - **Convenience:** an extra tool loadout slot, a bigger museum wing.
  - **Private servers** priced low; fun server-wide consumables (confetti cannon).
  - **Deliberately avoided:** paid revives, paid luck, stat passes, energy, skips.
- **Retention:**
  - **D1:** dailies, the next site teaser, "your museum has a new display", pity progress.
  - **D7:** weekly Friday contracts, 3–4 sites, the Crew Pass.
  - **Long-term:** mastery stars, catalogs, seasonal sites, Rival Crews, Crew Licenses.
- **Viral Potential:**
  - Two-person physics carries create constant clip moments: the piano down the stairs,
    the vase lost at the truck.
  - Shareable haul receipts, museum screenshots, "clutch extract" moments, and crew
    leaderboards per site.
- **Development Difficulty:** Medium.
- **Development Cost/Complexity:**
  - Moderate scripting: carry physics, network ownership, a seeded room assembler, a hazard
    timeline and nuisance AI.
  - Art: modular room kits per site plus about 50 props per site.
  - Animation: carry poses, ragdoll and a few emotes.
  - UI: HUD, receipt, museum and shop. Backend: profiles, teleports, leaderboards.
- **CCU Potential:** High.
  - It sits in the durable co-op survival/escape lane (11 Horror + Survival + Co-op games
    hold 8.8% of Top-100 CCU; veteran share 62–74%).
  - It has the physics-clip appeal driving October's ragdoll wave.
  - It works at low player counts (1–4 crews), which avoids the PvP cold-start problem.
  - Not "Very High": extraction co-op is already attracting entrants (Fatal Baboons 31.7k;
    Lethal Ape and Backrooms Company outside the Top 100), so execution and tone have to
    stand out.
- **Evidence anchors:** Criminal Simulator (38,113, 31 days old), Fatal Baboons (32,719),
  DOORS (38,021), Dead Rails (34,801), 13 Days to Escape (35,950), Fling Things and People
  (40,058; physics social), Ragdoll Physics (71,776; physics appeal).


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


## 6. Ranking the 20 concepts

**Scoring.** Each criterion is scored 1–10, where **higher is always better**:
- **Competition** 10 means little competition.
- **Ease of development** 10 means easiest. A Hard build scores about 4, Very Hard 2–3.
- **Weights:** all ten criteria count equally, for a total out of 100.
- **Ties** are broken by retention, then CCU potential, then replayability, then social.
- **CCU potential** is the likely player count 90+ days after launch, assuming solid
  execution:

  | Rating | Players online |
  |---|---|
  | Low | below the #100 floor of 21,851 |
  | Medium | about 22k–50k |
  | High | 50k–150k |
  | Very High | 150k+ (today's Top 10) |

These are our judgments, informed by the verified data. They are not measurements.

| Rank | Concept (#) | Demand | Competition | Ease of dev | Viral | Retention | Monetization | Replay | Social | Originality | Scalability | **Total /100** | Difficulty | CCU potential |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 | Crumble Crew (#1) | 8 | 6 | 6 | 9 | 8 | 7 | 9 | 9 | 7 | 9 | **78** | Medium | High |
| 2 | Trap Architects (#4) | 7 | 7 | 4 | 9 | 7 | 6 | 9 | 8 | 8 | 8 | **73** | Hard | Medium |
| 3 | Dodge League (#2) | 7 | 7 | 4 | 8 | 8 | 6 | 9 | 8 | 7 | 7 | **71** | Hard | Medium |
| 4 | Night Shift: Anomaly (#3) | 6 | 6 | 6 | 8 | 7 | 6 | 8 | 9 | 8 | 7 | **71** | Medium | Medium |
| 5 | Deep Haul (#5) | 8 | 5 | 4 | 6 | 8 | 7 | 8 | 8 | 7 | 8 | **69** | Hard | High |
| 6 | Micro Mayhem (#8) | 6 | 8 | 6 | 8 | 6 | 6 | 6 | 7 | 8 | 6 | **67** | Medium | Medium |
| 7 | Lantern Keepers (#7) | 8 | 4 | 4 | 7 | 8 | 6 | 8 | 8 | 5 | 8 | **66** | Hard | High |
| 8 | Duel Arcade (#10) | 7 | 5 | 6 | 7 | 7 | 6 | 8 | 6 | 6 | 8 | **66** | Medium | Medium |
| 9 | Heist Crew HQ (#15) | 7 | 6 | 4 | 7 | 7 | 6 | 8 | 8 | 5 | 7 | **65** | Hard | Medium |
| 10 | Haunted Hotel (#14) | 6 | 6 | 6 | 7 | 6 | 6 | 6 | 7 | 7 | 7 | **64** | Medium | Low |
| 11 | Cryptid Camera (#17) | 5 | 9 | 4 | 7 | 6 | 5 | 6 | 6 | 9 | 7 | **64** | Hard | Low |
| 12 | Kaiju Keepers (#9) | 7 | 5 | 2 | 7 | 8 | 7 | 7 | 7 | 6 | 7 | **63** | Very Hard | Medium |
| 13 | Convoy (#6) | 7 | 5 | 3 | 7 | 7 | 6 | 8 | 8 | 5 | 7 | **63** | Very Hard | Medium |
| 14 | Siege Squad (#19) | 6 | 7 | 4 | 5 | 7 | 6 | 7 | 7 | 7 | 7 | **63** | Hard | Medium |
| 15 | Sky Couriers (#13) | 5 | 7 | 6 | 6 | 6 | 5 | 7 | 6 | 7 | 7 | **62** | Medium | Low |
| 16 | Style Street (#16) | 6 | 4 | 4 | 7 | 6 | 8 | 6 | 8 | 6 | 6 | **61** | Hard | Medium |
| 17 | Tackle Town (#12) | 5 | 6 | 4 | 8 | 6 | 5 | 8 | 7 | 6 | 6 | **61** | Hard | Low |
| 18 | Dig Dynasty (#11) | 7 | 4 | 7 | 6 | 5 | 7 | 6 | 6 | 5 | 7 | **60** | Medium | Low |
| 19 | Homeroom (#20) | 7 | 2 | 4 | 6 | 7 | 7 | 6 | 9 | 4 | 6 | **58** | Hard | Low |
| 20 | Volt Racers (#18) | 5 | 6 | 4 | 6 | 6 | 6 | 7 | 6 | 5 | 6 | **57** | Hard | Low |

**How to read it:**
- **#1 CRUMBLE CREW wins** on the combination: High CCU potential at Medium difficulty,
  the best replay and social scores, and scalability (new sites are kits).
  - Deep Haul and Lantern Keepers also rate High, but they are Hard builds facing a
    dominant incumbent (Fisch and 99 Nights).
- **#2 Trap Architects** has the best viral and originality profile, but user-built
  content means building tools, saving, moderation and abuse handling (Hard).
- **#3 Dodge League** is the best pure PvP pick. Its weak point is the cold start: it
  only works with enough players online or convincing bots.
- **Not recommended for a small team:**
  - Homeroom: roleplay incumbents' network effects.
  - Volt Racers: crowded vehicle sims, Low CCU.
  - Kaiju Keepers: Very Hard animation and content load.
- **Overlap:** #13 Sky Couriers reuses #1's carry mechanic, and #14 Haunted Hotel overlaps
  #4 Night Shift. Build one of each pair, not both.


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


## 8. Roblox discovery strategy

**No strategy guarantees front-page placement.** Roblox's recommendation system decides
that. What we can control is everything it measures.

### What the algorithm measures (Roblox's own docs and DevForum)

- **Recommended For You** works in two stages: retrieval, then ranking.
- The most important ranking signals:
  - play-through rate (how many people who see the tile then play);
  - first-play bounce (leaving in under 60 s or 61–180 s counts against you);
  - play days per user and playtime per user, measured over D1, D2–7 and D8–28.
- The next tier: co-play days, qualified sessions, spend days, Robux per user.
- All signals are averaged per user from organic Recommended For You players, so a small
  game isn't penalized for being small.
- Players from ads are excluded from ranking, and genre is not a ranking factor.
- August 2026 change: more weight on long-term retention and sustainable monetization.
- Sources: [discovery](https://create.roblox.com/docs/discovery),
  [discovery FAQ](https://create.roblox.com/docs/discovery-faq),
  [Aug 2026 post](https://devforum.roblox.com/t/boost-your-discovery-by-building-games-people-want-to-play/4779042).

### Thumbnail strategy

- **The moment that sells it:** two crew members carrying a piano out of a house as the
  roof folds in behind them, the truck in frame, mid-run.
- Big shapes and faces, readable at phone tile size, and no key text along the bottom
  edge (the player count covers it).
- Keep **2–5 active thumbnails** so Roblox's personalization can test them. Roblox reports
  +8.5% average qualified play-through rate. Suggested set:
  - the piano carry;
  - the cruise ship tilting with crew sliding;
  - the museum Artifact reveal;
  - a raccoon stealing a crown;
  - a crew celebrating at the truck.
- **Honest:** every thumbnail shows something that happens in the first two runs. A
  misleading thumbnail raises bounce and costs exposure.
- Video thumbnail: 15–30 s of real gameplay (allowed and authentic).

### Icon strategy

- One object plus one reaction: a cracked chandelier about to drop on a wide-eyed crew
  member, or a piano with two pairs of gloves.
- Test 2 icons over time. Check readability at 150 px.
- Keep the same palette and character across icon, thumbnails and the game.

### Title

- **"CRUMBLE CREW"**, short, searchable, explains the vibe.
- Use a bracket tag only for real news, e.g. `[NEW SITE] CRUMBLE CREW` or
  `[🎃 HAUNTED CASTLE] CRUMBLE CREW`. In the Top 100, 65 titles use bracket tags and 61
  use emoji. That's normal practice, but the tag must match current content.
- Never use other games' names as bait. Some current entries stuff descriptions with
  trending game names; Roblox down-ranks mismatched metadata.

### Description (the first two lines show on mobile)

> 🏚️ Your crew has 6 minutes to carry the treasure out before the building collapses!
> 🤝 Carry pianos with friends, dodge raccoons, fill your museum with rare Artifacts.

- Then a short "NEW:" line with the current update.
- Then 4–6 feature bullets: co-op 1–4, 6 sites, a museum, weekly contracts, no
  pay-to-win.
- Median Top-100 description length is about 480 characters. Keep it skimmable.

### Tags and genre

- Set Roblox genre to **Survival → Escape** (where co-op runs like DOORS, Dandy's World and
  13 Days to Escape sit) or Party & Casual. Pick the one whose players match. The genre
  isn't a ranking factor, but it decides which surfaces and filters the game shows up in.
- Description keywords for search: "co-op", "carry", "physics", "with friends", "escape",
  "museum", "salvage".

### Update frequency and events

- Weekly Friday drops (the Inspector seed, rotations), small content every 2 weeks, a
  monthly site variant, a quarterly full site.
- Big moments go on the Roblox Events page so opted-in players get notified.
- Seasonal events matter: 76 of the Top 100 had an event or seasonal tag in Halloween week.

### Retention and session length (the main ranking levers)

- **First play:** under 15 s to the first carry; no menus first; a ~3-minute first run.
  This is the bounce fix.
- **Session length:**
  - "Play Again (same crew)" as the largest end-screen button;
  - runs of 6–10 minutes, so 3–5 runs make a 30+ minute session;
  - the practice yard toy while waiting.
- **Play days:** dailies, streaks, pity progress, weekly contracts, the museum spotlight.

### Social sharing

- Haul Receipt cards with funny stats.
- Museum photo mode.
- Clip-bait moments by design: two-person carries, collapses, and the "vase lost at the
  truck" slow-mo.
- An optional in-game "Clip it!" prompt after a clutch extract, suggesting the player
  record. We can't capture video for them.

### Friend invites and co-play

- Invite prompts at natural moments: after the first successful haul, and on the party pad.
- Use `SocialService:PromptGameInvite` with launch data so the friend joins your party
  directly.
- Friend crew bonus (+10%).
- Co-play days are a ranking signal, so the design rewards playing together without
  requiring it.

### Rejoin mechanics

- Dailies and the streak.
- "Your truck upgrade is ready." Upgrades are instant; this is a teaser for the next
  goal, not a timer.
- Weekly Inspector contract and weekend Double Artifact Luck.
- Experience notifications (13+, at most one a day, opt-in, never gated).

### Recommended-experience traffic

- Every signal above feeds Recommended For You.
- Watch Creator Hub → Acquisition → Home Recommendations signals against benchmark games,
  and fix them in order: play-through rate, first-play bounce, play days, playtime.
- Expect "explore" spikes after updates. Judge an update on the next 7–28 days, not the
  first day.

### Search discoverability

- A distinct title, keywords in the description, and a consistent name across the group,
  socials and the game.
- Cross-promote from the creator's other games only if their audiences match.


## 9. Development plan

Time estimates assume **1–3 developers** using Claude Code plus Roblox Studio and Blender.
They are estimates, not commitments. A phase is done when its exit test passes, not when
the time runs out.

### Phase 1: Prototype (about 2–3 weeks)

**Goal:** prove that carrying things out of a collapsing room with a friend is fun with
greybox art.

| System | Priority | Depends on | Complexity |
|---|---|---|---|
| Carry system: grab/hold/throw, server-validated network ownership | P0 | — | Medium-High |
| Two-player heavy carry | P0 | Carry | High |
| Valuables with value, weight, fragility (5 greybox items) | P0 | Carry | Low |
| Truck zone + quota counter | P0 | Valuables | Low |
| Collapse timer: scripted section drops on one hand-built greybox house | P0 | — | Medium |
| Ragdoll on big impacts | P1 | Carry | Medium |
| 2–4 player run in one server, no teleports | P0 | — | Low |

- **Exit test:** 5 outside playtesters, no explanation given. They laugh, try again
  unprompted, and ask to bring a friend.
- **Don't build yet:** saving, shop, progression, more sites, UI polish, monetization,
  hub, teleports.

### Phase 2: Vertical slice (about 4–6 weeks)

**Goal:** one site (Mansion) at near-final quality, so we know what "good" costs.

| System | Priority | Depends on | Complexity |
|---|---|---|---|
| Seeded room assembler (15 Mansion modules) | P0 | Prototype | Medium |
| 40 Mansion items + 2 nuisances (Raccoon, Roomba) | P0 | Assembler | Medium |
| Final art kit for one site (Blender modular kit, trim sheet) | P0 | Style sheet | Medium |
| Phone controls + HUD (quota, integrity, context button) | P0 | — | Medium |
| Juice: impacts, cracks, receipt screen, sounds | P0 | — | Medium |
| First-3-minutes onboarding script | P0 | Above | Low-Medium |
| Basic save (Cash, XP), analytics funnel events | P1 | DataService | Medium |

- **Exit test:**
  - The first-time player funnel reaches the second run in more than about 70% of
    playtests (internal target, not a benchmark).
  - Steady 60 fps on a mid phone; draw calls in budget.
- **Don't build yet:** sites 2+, Crew Pass, museum, trading, Rival Crews, events.

### Phase 3: Alpha (about 6–8 weeks)

**Goal:** the full loop.

| System | Priority | Depends on | Complexity |
|---|---|---|---|
| Hub (Depot) + reserved-server run teleports + party flow | P0 | Slice | Medium-High |
| Session-locked profiles, migrations, receipts | P0 | — | Medium |
| Tools I–V, truck I–VI, Crew Level, perks | P0 | Data | Medium |
| Sites 2–3 (Ship, Factory) from new kits | P0 | Assembler | Medium-High |
| Artifacts + catalog + pity + museum rooms | P0 | Data | Medium |
| Daily/weekly quests, achievements/badges | P1 | Data | Low-Medium |
| Leaderboards (OrderedDataStore) | P1 | Data | Low |
| Matchmaking queue for random crews (MemoryStore) | P1 | Hub | Medium |
| Shop (cosmetics, VIP, private servers) + ProcessReceipt | P1 | Data | Medium |
| Configs-driven tuning (quotas, payouts, pity) | P1 | — | Low |

- **Exit test:** 20–40 closed testers over 2 weeks. Measure D1 return, runs per session,
  and the economy pace against the targets.
- **Don't build yet:** Crew Pass seasons, Rival Crews, seasonal sites, trading,
  notifications.

### Phase 4: Beta (about 3–4 weeks)

**Goal:** fix the biggest problems with real players.

| Work | Priority | Complexity |
|---|---|---|
| Public soft-launch (no ads), friends and communities | P0 | Low |
| Fix the top 3 funnel drop-offs, top crash and exploit reports | P0 | Varies |
| Performance pass on low-end phones (streaming, LOD, pooling) | P0 | Medium |
| Economy tuning via Experiments (payout curve, quota, pity) | P1 | Low |
| Thumbnails ×3–5, icon ×2, description, Events page | P1 | Low |
| Moderation and anti-exploit audit (carry teleport, item duping) | P0 | Medium |

- **Exit test:** stable D1 and D7 cohorts, first-play bounce trending down, no data-loss bugs.
- **Don't build yet:** new sites. Every hour goes to retention and quality.

### Phase 5: Launch (about 1–2 weeks)

- Site 4 (Museum) as the launch headline, a launch event (Double Artifact Luck weekend),
  and Crew Pass Season 1.
- Thumbnail personalization on; the Events page entry live; invite rewards on.
- Optionally a small Ads Manager test, **only if** D1 and playtime hold. Compare the ad
  cohort with organic players and stop campaigns that bring players who bounce.
- **Don't build yet:** a second game mode. Watch the 7–28-day signals first.

### Phase 6: Live operations (ongoing)

| Cadence | Work |
|---|---|
| Weekly (Fri) | Inspector seed, modifier and quest rotation, museum spotlight, bug patch |
| Biweekly | New items or a nuisance, balance from data |
| Monthly | Site variant or boss; community goal |
| Quarterly | New full site + Crew Pass season |
| Seasonal | Haunted Castle (Oct), Storm Tower (Winter), Summer Cruise |
| When D30 is healthy | Rival Crews (opt-in PvP-lite), Crew Licenses |

Patches ship separately from content. Protect the team's time: Roblox's LiveOps guide
explicitly says to.


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


## 11. AI + Blender environment workflow

The rules below come from Roblox's own mesh, streaming and performance docs
([meshes](https://create.roblox.com/docs/parts/meshes),
[improve performance](https://create.roblox.com/docs/performance-optimization/improve),
[streaming](https://create.roblox.com/docs/workspace/streaming)). The workflow around them is
my recommendation.

### Make in Blender vs. build in Studio

| Make in Blender (MeshPart) | Build in Studio (Parts, Terrain, built-ins) |
|---|---|
| Hero props players look at up close: the arena centrepiece, landmark statues, the lobby set piece | Gameplay geometry that must collide exactly: floors, walls, ramps, arena boundaries. Use Parts so collision is simple and editable |
| A modular kit: wall, corner, pillar, trim, stairs and roof pieces on a shared grid | Terrain: grass, sand, water, cliffs. Terrain is cheap to stream and paint |
| Organic shapes Parts can't make: rocks, trees, foliage cards, creatures | Lighting, Atmosphere, Sky, post-effects |
| Characters, pets, weapons, tools, crates | Interactive logic objects: spawns, triggers, zones (invisible Parts, CanCollide off) |
| Store art: icon, thumbnails, pass logos, badge medals (rendered images) | UI layout, which a Blender render only feeds |

### Optimizing Blender assets for Roblox

- **Import pieces, not whole maps.** Roblox only batches identical meshes into one draw call
  (*instancing*) when copies share the same mesh asset. Its importer doesn't de-duplicate,
  so importing a whole map turns every repeated tile into a separate asset. Import each
  kit piece once and duplicate it in Studio, or use Packages. (Roblox perf doc.)
- **Draw calls matter more than triangles.** Draw calls carry significant overhead, and
  decals, textures and particles batch badly. Watch Render Stats (Shift+F2) on a phone,
  not just a PC.
- **Polygon budget (my rule of thumb, not a Roblox limit):**
  - hero props: up to ~5–10k tris;
  - modular kit pieces: under ~1–2k tris;
  - scatter (rocks, plants): under ~500 tris.
- **Leave `RenderFidelity` on Automatic** so Roblox's built-in LOD works: highest detail
  under 250 studs, medium at 250–500, lowest beyond 500. Use Precise sparingly; the perf
  doc flags it as a common cost.
- **Collision:**
  - Set `CollisionFidelity = Box` on small anchored props (the docs say this is generally safe).
  - Use Hull for mid-size props. Avoid PreciseConvexDecomposition except where players
    walk on the mesh.
  - Decorative meshes get `CanCollide`, `CanTouch` and `CanQuery` all false.
- **Shadows:** set `CastShadow = false` on small and far props.

### LOD strategy

1. Rely on `RenderFidelity` Automatic for single meshes.
2. For big set pieces, make two versions in Blender: a full mesh, and a decimated
   "far" mesh (about 25% of the tris) used only in the skybox or distant backdrop.
   Players never stand near the far version.
3. With StreamingEnabled, set distant decorative models to stream normally and keep only
   gameplay-critical models `Persistent`. Turn on `ModelStreamingBehavior = Improved` and
   `StreamOutBehavior = Opportunistic`, as Roblox recommends, to cut memory on low-end phones.

### Texture strategy

- **One shared trim sheet and one shared colour atlas** (1024² is plenty for a stylized
  game) across the whole kit. Fewer unique textures means fewer draw calls and less memory.
- A stylized look wins on Roblox: flat colour plus a gradient ramp or baked AO. Use PBR
  `SurfaceAppearance` only on a few hero pieces.
- Bake lighting detail (AO, edge wear) into the colour map in Blender instead of stacking
  decals in Studio.
- Prefer Studio `MaterialVariant`s for big surfaces (ground, walls). They tile and cost
  less than unique textures.

### Modular environment kit (build once, reuse everywhere)

- **Grid:** 4-stud base unit; wall pieces 8×12 studs; pivots at the bottom corner.
  Snap with Studio's 1/4-stud move increment.
- **Kit list:** wall straight/corner/T/end, doorway, window, floor tile, stair, ramp,
  railing, pillar, roof edge/corner, trim strip, 3 rock sizes, 3 tree sizes, 2 bushes,
  4 clutter props.
- **Variety without new meshes:** recolour (VertexColor / Color), rotate, scale ±10%,
  swap trim. One kit can dress several maps.

### Detailed environments without destroying performance

- Put detail where the camera is: the first 30 seconds of the map and the arena centre.
  Keep the periphery simple.
- Fake distance with Atmosphere haze, a painted skybox and silhouette backdrops instead of
  real geometry.
- Use particles for life (dust, leaves, embers), at low rates, with no per-frame property
  tweaks (the docs warn this is expensive).
- Budget per map (my recommendation): under ~150 draw calls on a mid phone, under ~60k
  visible tris in a typical view. Measure with the MicroProfiler and Render Stats, and
  test on a real low-end phone before publishing.

### Using AI-generated concepts as references

- Use AI image tools for **mood boards and paint-overs**: palette, lighting mood,
  silhouette ideas. Don't treat them as final assets.
- Lock a **style sheet** from 3–5 approved images: palette hex values, line weight,
  bevel size, proportion rules (chunky, rounded, 1.2× scale on heroes). Pin it in the
  repo (`art/STYLE.md`).
- Model to the style sheet in Blender. AI 3D generators (Roblox's own Cube/Assistant, or
  text-to-3D tools) are fine for **blockouts and background props**, but retopologize
  and re-texture them to the shared atlas before import, or they will break instancing
  and the style.
- Never feed in or copy another game's IP, characters or recognizable assets. Roblox
  moderation and the Creator Store rules apply to AI output too.

### Keeping the style consistent

- One palette: 6–8 colours plus 2 accents, stored as Studio Color3 constants and Blender
  swatches.
- One bevel and edge style, and one lighting rig in Blender for store renders, so
  thumbnails look like the game.
- One "golden" reference scene in Studio. Every new map gets screenshotted next to it
  before merge.


## 12. Final recommendation

### The 5 most promising genres right now

For each: why it's promising, and the honest catch.

1. **Co-op survival/escape (PvE runs).**
   - Why: 17 games in the Top 100, and games over a year old hold 62% of the genre's
     players. New risers keep appearing: Criminal Simulator at 31 days, 13 Days to
     Escape, Fatal Baboons, 30 Floors Up, DONT SPLASH. It works at low player counts.
   - Catch: finite story chapters fade, so procedural variety is mandatory.
2. **Competitive skill PvP (duels, battlegrounds, shooters).**
   - Why: RIVALS has the most favorites in the Top 100 (97M); games over a year old hold
     88–89% of the genre's players.
   - Catch: it needs enough players online to match and needs netcode skill. Hard for a
     newcomer without bots.
3. **Social deduction / asymmetric 1vX.**
   - Why: games over a year old hold 94% of the genre's players (MM2 at 445k, Forsaken,
     Violence District).
   - Catch: dominated by incumbents. Only a strong twist breaks in.
4. **Ability sports.**
   - Why: 7 games; games over a year old hold 63% of the genre's players; Volleyball
     Legends is 2 years old at 68k.
   - Catch: soccer is already crowded with four entries.
5. **Physics/ragdoll, but only with goals and friends.**
   - Why: six October launches made the Top 100.
   - Catch: the 1-player toys carry high sustainability risk. The veterans that last
     (TSB, Jujutsu Shenanigans, Fling Things) wrap physics in social or competitive goals.

**Not on this list, on purpose:** steal-a, +1 incrementals, egg/pet tycoons and anime TD.
They're huge right now but oversaturated, and their old games hold only 6–22% of the
genre's players.

### The 5 most promising genre combinations

1. **Co-op PvE runs + physics comedy + earned collection** (CRUMBLE CREW, 78/100)
2. **Party obby + player-made challenges** (TRAP ARCHITECTS, 73)
3. **Ability sport + earned style collection + ranked** (DODGE LEAGUE, 71)
4. **Social deduction + anomaly job-sim** (NIGHT SHIFT: ANOMALY, 71)
5. **Co-op crew roles + fishing/creature collection** (DEEP HAUL, 69)

### The 10 biggest opportunities

1. Procedural co-op runs, where most new co-op horror is finite chapters.
2. Physics fun with goals and friends, where the current wave is solo toys.
3. Older teens and adults (18+ is 29% of DAU, growing 18% a year) in a Top 100 that is
   56% Minimal-maturity kid games.
4. Ability sports beyond soccer: dodgeball, hockey, rugby-like.
5. Regional and cultural themes with weak competition (an Arabic-only game at 24.8k).
6. Earned-RNG collection: the pull of Collection + RNG (25 games, 37.7% of top-100
   players) without paid-random-item obligations.
7. Original remixes of Steam co-op mechanics instead of risky direct ports.
8. Social deduction combined with the anomaly trend.
9. Showcases other players visit (museums, displays) that turn collection into status.
10. Player-made content inside rounds (Survive Your Ideas proves the appetite).

### The 10 biggest mistakes new Roblox developers make


1. **Chasing a trend at its peak.** The data shows how fast breakouts fade:
   - Grow a Garden reportedly peaked around 22M players at once (August 2025). In this snapshot it had **19,677**, outside the top 100.
   - Steal a Brainrot reportedly peaked around 25M. Today it has **101,425**.
   - A copy launched after the peak competes with the original's decline plus its other clones. Five "steal" games are in today's top 100.
2. **Building content before the loop is fun.** Twelve maps don't fix a dull 30-second loop. Roblox's own advice since August 2026: "if retention is low, focus first on making the core gameplay experience more fun."
3. **A slow first minute.** Roblox now counts players who leave within 60 seconds, or within 61–180 seconds, against your game in Home recommendations. Splash screens, long tutorials and menus before play cost ranking.
4. **Buying ads before the game keeps players.** Players who arrive from ads are left out of the recommendation signals. Ads only amplify a game whose retention already works.
5. **Single-player design on a social platform.** 28 of the top 100 also appear in Roblox's "Fun with Friends" list, and co-play is a ranking signal. A game that is no better with a friend wastes Roblox's biggest growth channel.
6. **Monetizing friction instead of fun.** Energy timers, paid skips, hidden odds and pay-to-win in PvP. Roblox's docs say its users dislike timers, paid random items must show odds, and its August 2026 ranking update weighs "sustainable monetization".
7. **Over-scoping the first version.** A small team that spends 6 months on an MMO-scale RPG usually never ships. Among the new breakouts, most of the 33 games created in the last 60 days are small, focused loops: "+1 per step", ragdoll sandboxes, single-mechanic co-op escapes.
8. **No update rhythm.** The veterans holding 40% of top-100 player counts (30 games over 3 years old) all ship constant content and events. Many titles are literally tagged "[UPD 21]", "[HALLOWEEN]" or "[WEEK 3]". A game with no update plan peaks once.
9. **Ignoring phones.** Roblox's UI guidance says younger players lean mobile. Tiny text, touch targets under 40 px and heavy maps lose them before the loop starts.
10. **No measurement.** Shipping without onboarding funnels, retention cohorts or A/B tests (Configs and Experiments) means guessing. Every successful live team in the playbook research measured first, then built.


### The single best concept: CRUMBLE CREW

It has the best combination of CCU potential, retention, virality, monetization,
scalability and realistic development difficulty. It scored 78/100, the top of the
ranking in section 6.

### Why this concept

- **It's in a durable lane that's still growing.** The Horror + Survival + Co-op PvE
  combination has 11 games in the Top 100, and games over a year old hold 62–74% of those
  genres' players. A 31-day-old co-op run (Criminal Simulator) already had 38k players.
- **It avoids the genre's known weakness.** Finite chapters are what kill new co-op
  horror. Seeded room modules make every run different, so 6–10 minute runs replay
  indefinitely with modest content cost.
- **It rides today's strongest acquisition hook without being a toy.** Ragdoll and
  physics comedy made six October breakouts. Here, physics serves a goal, a team and a
  progression.
- **It doesn't need a full server to be fun.** 1–4 player crews avoid the PvP
  "empty-matchmaking" death spiral that kills small competitive games.
- **It's naturally social and shareable.** A two-person carry is co-play by definition,
  and co-play is a ranking signal. The failures are funny clips.
- **It can make money without exploiting anyone.** It earns through cosmetics, a seasonal
  pass, VIP, convenience and private servers. Nothing is random-for-Robux and nothing is
  pay-to-win.
- **A small team can build it.** It's Medium difficulty: the hard part is one system
  (networked physics carry), not years of content. New sites are kits plus props plus
  one hazard script.

**Brutally honest risks:**
- Extraction co-op is starting to attract entrants: Fatal Baboons (31.7k) in the Top 100,
  and Lethal Ape (~21k) and Backrooms Company (~3.5k) outside it.
- The window rewards a polished, non-horror, phone-first version soon. A late or janky one
  is just another clone.
- Networked physics on phones with lag is the main technical risk, which is why the
  prototype tests exactly that first.

### Note for your current game (FUNNY DISASTERS)

- Your disaster engine (93 world events), Blender pipeline and map kits overlap heavily
  with CRUMBLE CREW: collapsing sites, hazard timelines, physics props.
- You could prototype the carry loop as a mode inside your current place to test the fun
  before committing to a new game.
- That's an option, not a requirement. Keep the two audiences and listings separate if
  you ship both.

---

## If I Were Building This Game Today

**What I'd build first (week 1–3):**
- One greybox house that collapses on a script.
- Five physics valuables, including one that needs two people.
- A truck zone, a quota number and a ragdoll on big hits.
- 2–4 players in one server. Nothing else.
- Then: watch five strangers play it without explanation. If they don't laugh and
  replay, I'd change the carry feel before touching anything else.

**What I'd avoid:**
- Any steal-a / +1 / egg-tycoon pivot.
- Building more than one site before the loop tests well.
- Trading at launch.
- Selling Cash, luck, revives or anything random.
- Horror tone by default; it narrows the audience and ratings.
- A splash screen or menu before the first carry.
- Buying ads before D1 retention is proven.
- A giant monolithic script.

**What the first playable version must contain:**
1. Spawn holding an item within 10 seconds.
2. The carry system: one-person carry, two-person heavy carry, throw and drop, with
   fragile value loss.
3. The truck with a quota bar and an integrity bar.
4. One seeded Mansion with 15 room modules, 40 items and 2 nuisances (Raccoon, Roomba).
5. The collapse timeline plus the escape; downed and revive; ragdoll.
6. The Haul Receipt with funny stats and "Play Again (same crew)".
7. Phone controls and HUD at 60 fps on a mid phone.
8. Onboarding funnel events and a save for Cash/XP only.

When that version holds testers for three runs in a row, everything else in this report
becomes worth building.

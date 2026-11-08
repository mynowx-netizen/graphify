# Loops: core gameplay loops, feedback loops, progression

Topic key `loops`, 20 videos, researched 2026-11-08. Evidence: **A 4 · B 3 · C 13**.

## Videos

| rank | title | channel | views | evidence | 1-line takeaway |
|---|---|---|---|---|---|
| 1 | Progression Systems - How Good Games Avoid Skinner Boxes | Extra Credits | 1,315,540 | B | Progression should support intrinsic fun (mastery, mystery, novelty, flow) rather than work as a reward trap. |
| 2 | How Games Use Feedback Loops | Game Maker's Toolkit | 1,181,540 | A | Pair snowballing (positive) loops with catch-up (negative) loops, as Pyre and Mario Kart do. |
| 3 | Building Better Skill Trees | Game Maker's Toolkit | 1,061,312 | B | A small "pruned bush" of interesting upgrades beats a forest of boring stat bumps. |
| 4 | Dear Game Developers, Stop Messing This Up! | Jonas Tyroller | 980,580 | C | Off-topic: it is about DeltaTime (frame-rate-independent code), not loops. |
| 5 | Leveling Up Progression Systems | Adam Millard - The Architect of Games | 674,680 | C | Not found. |
| 6 | What Makes a Good Level Up System? | Design Doc | 578,774 | B | Level-ups work when they give a tangible benefit plus player agency, so they don't feel like a grind. |
| 7 | I Made a Roblox Simulator Game in 7 Days! | Maze Sunshine | 394,545 | C | Not found (dev-log). |
| 8 | Qualitying The Life Out of Games | Razbuten | 387,763 | C | Not found. |
| 9 | Making a Viral Roblox Tycoon in 14 Days | janisjanis01 | 375,144 | C | Not found (dev-log). |
| 10 | How Cyberpunk 2077 built the PERFECT gameplay loop | WireMagician | 372,650 | C | Not found. |
| 11 | How Gameplay Loops Keep You Playing | Adam Millard - The Architect of Games | 316,478 | C | Not found. |
| 12 | Making a Viral Roblox RNG Game in 30 Days | janisjanis01 | 294,969 | C | Not found (dev-log). |
| 13 | Mechanics Shaping Story - Re-examining the Core Gameplay Loop | Extra Credits | 187,513 | C | Not found. |
| 14 | Gameplay Loops Are Out, Chains Are In | Indie Game Clinic | 156,323 | A | Think in chains: a reward is worth what the player plans to do with it next. |
| 15 | How Dave the Diver's Addictive Gameplay Loop Captured Millions of Gamers | IGN | 117,848 | C | Not found; the game's dive-then-sushi-bar loop is documented elsewhere. |
| 16 | What are loops in game design? | Game Design with Michael | 106,034 | C | Not found. |
| 17 | Core Game Loops | Timothy Cain | 86,409 | A | Define the core loop early. It must serve every design pillar because players spend most of their time in it. |
| 18 | Roblox Game Design Explained Like You're 5 Yrs Old | Tizzy RBLX | 64,891 | C | Not found (snippet: "80/20 formula"). |
| 19 | How To Design a Gameplay Loop | Apox Fox | 56,068 | C | Not found. |
| 20 | How to make an ADDICTIVE game? | VAV | 47,471 | A | Covers fast-then-slow progression, random rewards, learning curve and waiting, and flags the ethics of waiting and scarcity. |

## Per-video notes

**1. Extra Credits, Skinner boxes (B)**
- Snippet: progression systems are "far too often" designed as Skinner boxes that hand out "carefully measured" rewards.
- Listing summary: Skinner boxes are not rewarding in themselves, but progression systems can be, and they should be used to make a better game. https://watch.plex.tv/show/extra-credits/season/2015/episode/32
- A 2016 recap says the episode offers engagement types to support progression instead of bare leveling: mystery, mastery, mental challenge, narrative, novelty, flow. https://bruce-eme6414.blogspot.com/2016/08/skinner-box-and-social-media.html

**2. GMTK, feedback loops (A, transcript excerpts)**
- Calls Mario Kart's item distribution "the perfect example". Negative loops push games back toward equilibrium. https://huggingface.co/datasets/taesiri/GMTK-Transcripts/viewer/default/train?p=38
- Positive loops frustrate weaker players, who get stuck in a "death spiral" or can't catch a runaway winner.
- Pyre pairs positive and negative loops to stop runaway snowballing. For example, a player who scores sits out the next round, which gives the trailing side a numbers advantage.
- Resident Evil 4's dynamic difficulty is a hidden negative loop. Capcom never disclosed it, because telling players "play well and it gets harder" invites good players to play badly on purpose.

**3. GMTK, skill trees (B, subtitle fragments only)**
- Prefers "a tightly pruned bush with a handful of truly interesting upgrades" over "skill forests" (Path of Exile, Salt and Sanctuary). https://amara.org/videos/jBBCGG1NrHDT/en/3100762
- Names "really boring" skills as a core failure.
- Treats how players earn skill points as a separate problem. Example: Prey's skill points (Neuromods) are physical objects placed in the world. https://thetvdb.com/series/game-makers-toolkit/episodes/6945644

**4. Tyroller, DeltaTime (C)**
- The snippet says the video is "all about" DeltaTime. It is not a loops video.
- Inferred relevance: frame-rate-independent movement keeps the moment-to-moment loop feeling the same on every device (scale by `RunService.Heartbeat` dt).

**5. Architect of Games, Leveling Up (C)**
- No summary found. Snippet: "we're all getting a bit sick of them, but is there more...". Inferred: progression should do more than raise numbers.

**6. Design Doc, level-up systems (B)**
- AI digest summary: good level-ups use extrinsic progression with tangible benefits and a sense of agency, so they don't feel like a monotonous grind. https://recapio.com/digest/what-makes-a-good-level-up-system-by-design-doc
- A top comment says the video mostly defines terms, and asks whether simple point allocation (Castle Crashers) beats huge choice sets (Path of Exile). https://yt.d0.cx/v/yt/Ae_zvm0-CQU

**7. Maze Sunshine, simulator in 7 days (C)**
- Nothing found. Inferred: a short build of the standard simulator loop (see the genre map).

**8. Razbuten, QoL (C)**
- Nothing found. Inferred from the title: cut friction that is pure chore, keep friction that creates decisions.

**9. janisjanis01, tycoon (C)**
- Nothing found. The channel's only indexed transcript is a different video.

**10. WireMagician, Cyberpunk (C)**
- Nothing found about the video itself.

**11. Architect of Games, loops (C)**
- Only aggregator listings found.

**12. janisjanis01, RNG (C)**
- Nothing found. Inferred: a dev-log of an RNG/aura roll loop.

**13. Extra Credits, mechanics shaping story (C)**
- Only a listing (aired 2019-03-13). https://www.thetvdb.com/series/extra-credits/episodes/7378050

**14. Indie Game Clinic, chains (A)**
- Design "chains" of actions that build emotional investment and meaning, not just repeated "loops". https://recapio.com/digest/game-loops-are-out-chains-are-in-by-indie-game-clinic
- An item is worth what the player plans to do with it. The video cites Dan Cook's value-chain essay, which warns that a broken or obscured chain makes the early steps feel worthless. https://lostgarden.com/2021/12/12/value-chains/
- Secret chains found by experimenting (Spelunky's hidden true ending) add depth.

**15. IGN, Dave the Diver (C)**
- Video not found. About the game (not this video): reviewers describe diving by day and running the sushi bar by night, with each dive planned around the next shift. https://www.avclub.com/dave-the-diver-review-gameplay-loop-roguelike-fish-restaurant-management

**16. Game Design with Michael (C)**
- Nothing found beyond the snippet.

**17. Timothy Cain, core loops (A)**
- You can usually spot a game's core loop within an hour of playing it, watching a stream or trying a demo. https://briefy.ai/summary/v2/pp48bm4h6ch38infxhbo6dq1/en/core-game-loops
- The core loop must touch every pillar. Side features may miss one; the loop can't. https://turbo-wiki.pages.dev/tim-cain/system-design/core-game-loops
- A clearly defined loop justifies design choices and makes it easier to refuse unwanted features.

**18. Tizzy RBLX (C)**
- This video was not found. A different Tizzy transcript calls idea plus execution "80%" of success, stated as his opinion, and says onboarding should be simple and focused on the core loop. https://sozai.app/transcript/made-3-viral-roblox-games/ (this is not evidence for video 18 itself).

**19. Apox Fox (C)**
- Nothing found.

**20. VAV, addictive game (A)**
- Progression with rewards that come less often over time, using World of Warcraft's leveling (fast early, slower later) as the example. https://sozai.app/transcript/how-to-make-addictive-game/
- Unpredictable rewards (timing, item, amount) beat predictable ones. Anticipation moments such as opening a chest make rewards feel bigger.
- Learning curve: too easy bores players, too hard frustrates them.
- Enforced waiting and scarcity raise return rates, but the video flags ethical concerns. https://recapio.com/digest/how-to-make-an-addictive-game-by-vav

## Top techniques for this topic

### Genre loop map

"->" means "leads to", and [brackets] mark the progression engine. Genre definitions follow Roblox's genre table (design-for-roblox). The diagrams are my synthesis, not taken from any one video.

```
SIMULATOR
 swing/click tool -> resource fills backpack -> sell pad -> coins
  -> [bigger tool / backpack / pet] -> collect faster -> unlock next zone -> ...
  -> [REBIRTH: reset coins, keep a permanent multiplier] -> same loop, faster

TYCOON
 droppers make cash -> collect -> buy next button (dropper, conveyor, wall)
  -> new buttons appear -> income rate up -> wait / collect -> ...
  -> base complete -> [REBIRTH or next plot tier]   (without this the game ENDS)

OBBY
 attempt stage -> fall -> respawn at checkpoint -> retry -> clear
  -> checkpoint saved + stage count + coins -> [trails, cosmetics, skip-stage]
  -> next stage -> finish -> [harder tower / speedrun timer + leaderboard]

RNG / AURA
 roll (free, cooldown) -> reveal animation -> rarity "1 in N" -> equip aura others see
  -> collection index fills -> [luck / roll-speed upgrades earned by play or quests]
  -> roll again for a rarer result

ROUND-BASED (survival, hide-and-seek, minigames)
 intermission -> round starts, roles assigned -> play -> win/lose screen
  -> XP + coins + streak -> [rank up, buy cosmetics/perks] -> next round
  (everyone resets each round = built-in catch-up; rank persists = long-term pull)
```

**1. Write a three-layer core loop and test every feature against it.** Videos: 17 (A), 14 (A); inferred from 11, 13, 16, 19. Roblox's Core loops doc uses the same layers: minute-to-minute action, then the most repeated action, then the progression engine.
- Apply: put your genre diagram on one card; any feature that feeds no arrow gets cut. Log the first pass through each arrow with `AnalyticsService:LogOnboardingFunnelStepEvent` (1 FirstCollect, 2 FirstSell, 3 FirstUpgrade, 4 NextZone) and look for drop-off in the Creator Hub funnel view.

**2. Build chains: every reward needs a planned next use.** Videos: 14 (A), 17 (A); 15 (C, game context).
- Apply: list every currency source and the sink it feeds. Simulator coins buy tools and zones, obby coins buy trails, RNG duplicates craft into luck. Log both sides with `AnalyticsService:LogEconomyEvent` (Source/Sink). Run event drops through the Expected Value check from Roblox's economy doc first, and give events their own currency and shop so main-economy prices don't inflate.

**3. Fast early levels, then a slowing curve you can tune live.** Videos: 20 (A), 6 (B); 5 (C, inferred).
- Apply: `xpToNext = floor(base * level ^ exponent)`, with `base` and `exponent` read from `ConfigService:GetConfigAsync()` so you can retune without restarting servers. Use `GetConfigForPlayerAsync` with Experiments to A/B test curves. Make each level-up a moment (TweenService pop, sound, particles). Track levels with `LogProgressionEvent`.

**4. Pair every snowball with a reset or catch-up.** Video: 2 (A).
- Simulator/tycoon: rebirth is a voluntary reset that turns a snowball into a permanent multiplier. Round-based: reset each round (like Pyre's sit-out) and carry over only cosmetics or small perks. PvP simulators: zone or matchmake by power so new players don't get farmed. Prefer visible catch-up over hidden rubber-banding.

**5. Fewer, meaningful upgrades instead of tiny stat bumps.** Videos: 3 (B), 6 (B), 1 (B).
- Apply: each tier should change how the game plays: a double jump or glider in an obby, auto-collect in a tycoon, a new tool behaviour in a simulator, auto-roll in an RNG game. Keep the tree small enough to fit on one phone screen. Save unlocked node IDs with DataStoreService `UpdateAsync`, and validate every purchase on the server.

**6. Give out progress resources through the behaviour you want.** Videos: 3 (B, Prey's in-world Neuromods), 14 (A, hidden chains).
- Apply: put eggs, tokens or secret rooms off the main path to reward exploration, and grant `BadgeService:AwardBadgeAsync` when a player finds one. Use quests to steer players into systems they skip (Roblox quest-design doc).

**7. Random rewards can build anticipation, but follow Roblox's odds rules.** Videos: 20 (A), 1 (B); 12 (C, inferred).
- Apply (RNG, eggs, chests): roll on the server with `Random.new()` and play a TweenService reveal. If a roll, key, spin ticket, luck boost or pity system can be bought with Robux (directly or via a Robux-bought currency), show every outcome with numeric odds summing to 100% before purchase, and update them while a boost is active. Call `PolicyService:GetPolicyInfoForPlayerAsync`; when `ArePaidRandomItemsRestricted` is true, offer an earnable path, a fixed order or a direct purchase, or hide the item. Free rolls (cooldown, found key) are exempt, but showing odds still builds trust.

**8. Back the loop with intrinsic motivators so it isn't a Skinner box.** Videos: 1 (B), 14 (A), 20 (A, ethics flag); 8 (C, inferred).
- Obby: mastery (stage timers, `OrderedDataStore` leaderboard). RNG: collecting and showing off a rare aura. Simulator: novelty, with frequent new zones early. Secrets add mystery. Single-player games retain worse on Roblox, so add trading, co-op bosses and `SocialService:PromptGameInvite`. Cut chores (a long walk to the sell pad); keep friction that forces choices.

**9. Layer short, mid and long goals over the loop.** Mainly supported by official guidance (Level Up workshop, quest-design doc); 20 (A) and 6 (B) indirectly.
- Short (session): dailies, next upgrade. Mid (days): a zone, pet set or badge set. Long (months): max rebirth, full index, season pass. The Engagement Rewards feature package handles login streaks and time-played rewards; keep them small and reliable, and space season-pass rewards to average session length.

**10. Timers and offline earnings: welcome players back, don't hold them hostage.** Video 20 (A) warns that waiting is ethically loaded. Also Roblox's tycoon and incremental playbooks.
- Apply: save `os.time()` on `Players.PlayerRemoving`. On join, calculate capped offline earnings and show a "welcome back" screen. Don't let energy meters block the core loop, and never pair timers with pressure to buy.

## Conflicts and caveats
- **Addiction vs anti-Skinner.** VAV (20) presents random rewards, rarer rewards over time and enforced waiting as levers. Extra Credits (1) warns these become traps. For a young audience, follow EC: randomness is a spice, not the whole loop, and never stack timers, paid skips and loss-aversion prompts.
- **Hidden vs visible balancing.** GMTK (2) notes RE4 hid its dynamic difficulty because disclosure invites deliberate bad play. In competitive Roblox modes, secret help for losing players feels unfair once discovered, so explicit resets are better.
- **Tree size.** GMTK (3) favours small trees, while the Design Doc (6) comment notes that some players love huge choice sets. For a young, mobile audience, lean small.
- **Paid randomness is regulated.** The policy covers luck boosts and pity systems, not just eggs. A bare (i) icon without a word is explicitly not enough for odds disclosure. Avoid fake near-misses and countdowns on Robux offers.
- **Unverified claims, not used.** A figure that "a primary loop should take 30 s to 2 min" appeared only on a low-quality aggregator. Tizzy's "80/20" is personal opinion, from a different video.
- **Coverage.** All Roblox dev-log videos (7, 9, 12, 18, 19) are C, so the genre map rests on Roblox docs plus the A/B design videos. The shared search budget ran out; a follow-up pass could upgrade 4, 5, 8, 10, 11.
- **Doc typo.** Roblox's economy doc lists Salmon at 10% but writes "30%" in the EV line. The 3G result matches 10%.

## Official Roblox guidance
- A core loop runs from minute-to-minute interaction to the most repeated actions to the progression engine. "Without a progression system, a game becomes repetitive, boring, and shallow." https://create.roblox.com/docs/production/game-design/core-loops
- Onboarding must teach the core loop's "what" and "why". Keep early XP thresholds low and tune them with Configs and Experiments. https://create.roblox.com/docs/production/game-design/onboarding
- Level Up workshop (Roblox Game Insights team): use short, mid and long goals; progression paces how fast content is used up; "don't lock initial fun behind progression". https://devforum.roblox.com/t/level-up-workshop-player-goals-and-progression/1575708
- Dailies are short goals with small, reliable rewards that drip resources in. Quest chains and quests add variety to a session. https://create.roblox.com/docs/production/game-design/introduction-to-quest-design
- Track sources and sinks, estimate an event's impact with Expected Value, and prefer a separate event currency. https://create.roblox.com/docs/production/game-design/balance-virtual-economies
- Paid random items: show all outcomes with numeric odds that add up to 100%. Luck boosts and pity systems are included. Handle `ArePaidRandomItemsRestricted`. https://create.roblox.com/docs/production/monetization/paid-random-items
- Roblox's genre definitions (simulator, tycoon, obby) and social-first design. "Single-player games often find it harder to build and retain an audience." https://create.roblox.com/docs/production/game-design/design-for-roblox
- In incremental simulators the player's main "enemy" is friction, meaning the time between upgrades. For tycoons, Roblox suggests a welcome-back offer on offline earnings. https://create.roblox.com/docs/production/promotion/rewarded-video-playbooks/incremental-sim

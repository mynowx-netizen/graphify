# Roblox Game Playbook: the best techniques from 120 YouTube videos

Researched 2026-11-08. Sources: the 20 most-viewed relevant videos on each of six topics
(Roblox development & game design, player retention, gameplay loops, UI design,
monetization, what makes a game fun), cross-checked against Roblox's official
Creator Docs and DevForum announcements. Per-topic notes with every source link are in
[`research/`](research/). How the videos were picked and what the evidence levels mean
is in [`README.md`](README.md).

How to read the "backed by" lines: **A** = we found a detailed summary or transcript of
that video, **B** = partial coverage, **C** = title and description only. Official Roblox
docs are named when they agree, because they are the most reliable source here.

---

## The 12 techniques that showed up everywhere

Ranked by how many of the six topics point to them, how strong the evidence is, and how
directly Roblox's own docs back them.

### 1. Get players to the fun in the first minute

Roblox's Home ranking now counts players who leave a first session within 60 seconds,
or within 61–180 seconds, **against** your game. Roblox's onboarding docs say to reach the
fun "ideally in 5 minutes or less". Show, don't tell: arrows, glowing trails and
highlights instead of text walls; a tutorial that pops up the first time a player
touches a feature; a hint only for players who seem stuck.

- Backed by: retention (Mobbin onboarding study A, Roblox Creators onboarding video B),
  dev & design (AlvinBlox A), fun (GMTK A), official onboarding + discovery docs.
- In your game: spawn new players *inside* the core loop with a starter tool. No menus
  first. Log each first-time step with `AnalyticsService:LogOnboardingFunnelStepEvent`
  ([`starter-kit/Onboarding.server.luau`](starter-kit/Onboarding.server.luau)) and fix the
  step where most people drop.

### 2. One core loop, three layers, every reward has a next use

The loop videos and Roblox's Core loops doc agree on the same shape:
**minute-to-minute action → the action players repeat most → a progression engine.**
Indie Game Clinic's "chains" idea adds the test that matters: every reward must feed
something the player *wants to do next*. A coin with nothing to spend it on is dead weight.

- Backed by: loops (Timothy Cain A, Indie Game Clinic A), dev & design (AlvinBlox A),
  official core-loops doc ("Without a progression system, a game becomes repetitive,
  boring, and shallow").
- In your game: write your loop on one card (see the genre map below). Cut any feature
  that does not feed an arrow. Pair every currency source with a sink and log both with
  `AnalyticsService:LogEconomyEvent`.

### 3. Make every action answer back ("juice")

The same rules feel boring or great depending on feedback: a tiny squash, a sound with a
slightly random pitch, particles, a number popping up, a short screen shake, a few frames
of freeze on a big hit. Jonas Tyroller's "fun button" breaks it into impact + reward +
challenge (+ fantasy).

- Backed by: fun (GMTK "Secrets of Game Feel and Juice" A, Tyroller A, "Juice it or lose
  it" B), UI (tap feedback), loops (level-ups as moments).
- In your game: `TweenService` on a `UIScale` for button presses, `ParticleEmitter:Emit(n)`
  at the hit point, `BillboardGui` "+10" pop-ups, camera shake in a LocalScript. Turn
  motion off when `GuiService.ReducedMotionEnabled` is on
  ([`starter-kit/Juice.luau`](starter-kit/Juice.luau)). Juice the most-repeated action first.

### 4. Prototype in days, keep what players actually do, tune live

The strongest agreement in the dev-story videos: "test first, then build". Build the
smallest playable version of one idea, put it in front of players, and only then invest.
GMTK's "The Games That Designed Themselves" shows hits coming from following the fun in
prototypes, not from one big idea.

- Backed by: dev & design (Starter Story A, MeEnyu A, Zyonic A), fun (GMTK A ×2),
  official prototyping doc ("Prototyping should be fast and quick").
- In your game: greybox with Parts, playtest with friends in Team Test, publish early.
  Put every number players feel (XP curve, rewards, hint delay) in Experience Configs so
  you can change or A/B test it without republishing
  ([`starter-kit/Tuning.luau`](starter-kit/Tuning.luau)). Decide *before* testing what result
  means "keep going" and what means "move on".

### 5. Progression that pulls players back on day 2 and day 7

Roblox's retention doc ties day-1 return to the core loop and first session, day-7 to
progression, day-30 to fresh content and social systems. The loop videos add how:
fast early levels then a slowing curve (VAV A); fewer, meaningful upgrades instead of
tiny stat bumps (GMTK Skill Trees B, Design Doc B); a reset or catch-up for every
snowball (GMTK Feedback Loops A), which on Roblox is the rebirth.

- In your game: short goals (today's quests, next upgrade), mid goals (next zone, a
  pet set), long goals (max rebirth, full collection). Keep the next goal on screen.
  Each upgrade tier should change *how* you play (double jump, auto-collect, auto-roll),
  not just a number. Offline earnings are a nice "welcome back", capped and never sold
  as a skip.

### 6. Make other players the content

Roblox counts "co-play days" as a ranking signal, and its design guide warns that
single-player games find it harder to build an audience. The successful developers in
Starter Story describe their formula as "clickable, social, replayable"; MeEnyu's top
devs built a multiplayer physics game on purpose.

- Backed by: dev & design (Starter Story A, MeEnyu A), retention (official discovery doc),
  fun (Extra Credits social mechanics B), official design-for-roblox doc.
- In your game: an invite button at fun moments using `SocialService:PromptGameInvite`
  with launch data so the friend spawns beside you
  ([`starter-kit/Invites.luau`](starter-kit/Invites.luau),
  [`starter-kit/JoinFriend.server.luau`](starter-kit/JoinFriend.server.luau)); a "played
  with a friend" bonus; cosmetics other players can see (trails, auras, titles);
  emotes; trading with both-sides confirm. Reward group play, never require it.

### 7. Phone-first, clarity-first UI

Roblox's UI guidance says younger players lean toward mobile, so design for a small touch
screen first. Sakurai's point (A) is that clarity and style
must be balanced for *your* game; GMTK (B) shows that whatever the HUD displays changes
how people play. Develuper (A) gets "10x better" UI from identity and depth: a darker
copy of each button behind it, gradients, a thick text stroke.

- In your game: size with Scale, clamp with `UIAspectRatioConstraint` and
  `UISizeConstraint`, keep the bottom corners free for the thumbstick and jump button,
  keep tappable UI inside the safe area (`ScreenGui.ScreenInsets = CoreUISafeInsets`),
  minimum text size 9. Show only what matters in the current moment. Test every screen
  in Studio's Device Emulator. Use the Style Editor so colors and fonts live in one place.

### 8. Leave things to discover

Extra Credits names four kinds of discovery (A): new places, new mechanics, new content,
new story. GMTK on Slay the Spire (A): combos players find themselves make them feel
smart. Roblox's strategy guide asks for "surprise and delight" moments and secrets.

- In your game: secret rooms with secret badges (`BadgeService`), a collection index
  with silhouettes of what's missing, upgrades that combine in unexpected ways, a
  pop-up when a combo fires.

### 9. An honest, distinctive thumbnail and title, tested

A custom thumbnail is required to get Home impressions. With 2–5 thumbnails active,
Roblox tests them per player; in Roblox's testing that averaged **+8.5%** qualified
play-through rate. Misleading titles or images cause bounces and reduced exposure, and
"free Robux" style metadata is down-ranked.

- Backed by: retention (waveshine A: "one of the most important things"), dev & design,
  official thumbnails + discovery docs.
- In your game: 16:9, 1920×1080, real gameplay, no key text along the bottom edge (the
  player count covers it). Icon 512×512 that still reads at small size. Retest
  thumbnails with every big update.

### 10. Fix retention before you buy ads or push monetization

Ads amplify a good game; they don't rescue a bad one. Zyonic (A) turned ads off when
they brought players who left. AlvinBlox (A): money spent won't fix a weak game. Roblox's
August 2026 discovery post: "if retention is low, focus first on making the core gameplay
experience more fun." Players who arrive from ads are left out of the Home ranking
signals, so ads cannot buy you a better ranking.

- In your game: run small Ads Manager tests only once day-1 return and playtime hold up;
  compare ad players' retention to organic players'; stop campaigns that bring bouncers.

### 11. Monetize fairly: sell value, never relief from friction you added

The monetization critiques (Vox A, Extra Credits B, Mrwhosetheboss B) and Roblox's own
rules point the same way. Passes for permanent perks, Developer Products for repeatable
ones; no energy timers with paid skips (Roblox says its users dislike them); no
pay-to-win against other players; one offer at a time, at a natural moment (Roblox's
examples: the *Doors* pre-run shop, *Dress to Impress* intermission buys).

- Hard rules for paid random items (eggs, crates, spins, luck boosts, even through a
  currency bought with Robux): show every outcome's odds as numbers adding up to 100%
  **before** purchase, no "nothing" outcome, and an alternative for players where
  `PolicyService` says paid random items are restricted
  ([`starter-kit/PaidRandomGate.luau`](starter-kit/PaidRandomGate.luau)).
- Handle purchases with Roblox's official `ProcessReceipt` sample (record each
  `PurchaseId` in a DataStore, grant once). Read prices with `GetProductInfoAsync`
  instead of hard-coding them.
- Banned by Roblox: always-on "sales", timers that restart, false "almost gone" claims,
  pushy wording aimed at minors.

### 12. Update on a steady rhythm, guided by players

Tizzy RBLX (A) keeps a high-earning game alive with weekly or bi-weekly updates, separate
bug-fix patches, and active community listening. Roblox's docs suggest smaller updates
on existing systems every 2–4 weeks and big new systems every 2–3 months, and say to
protect your own mental health.

- In your game: keep an update calendar; announce updates through Creator Hub Events;
  ask for notification opt-in at a natural moment (`ExperienceNotificationService`;
  13+ only, at most one per player per day, never gate gameplay behind it).

---

## Applying it to your game: the build order

These steps assume you're starting a new game or reworking one. Each step has a
"done when" check you can verify yourself.

| Step | Do this | Done when |
|---|---|---|
| 1. Loop card | Pick your genre row below. Write your one-line fantasy ("you are a ___ who ___") and your three-layer loop. List every planned feature next to the arrow it feeds. | Every feature maps to an arrow; the rest is cut or parked. |
| 2. Fun prototype | Greybox only the minute-to-minute action, then juice it (technique 3). Team Test with 3–5 friends without explaining anything. | Testers repeat the action on their own and ask for more. |
| 3. First minute | Spawn into the loop with a starter kit, add visual cues, contextual tips, timed hints. Add the onboarding funnel. | In playtests, the first reward lands within the first minute. |
| 4. Progression | XP curve from Configs (fast early, slower later), short/mid/long goals, 3–5 upgrades that change how you play, a rebirth or reset. | A tester can say what they're working toward next at any moment. |
| 5. Social | Invite button with launch data, friend bonus, visible cosmetics, emotes. | A friend who accepts an invite lands next to the inviter and can start playing together right away. |
| 6. Phone UI pass | Scale + constraints, safe areas, thumb zones, minimum text size, Device Emulator on a small phone and a tablet. | Every button is reachable and readable on the smallest phone preset. |
| 7. Soft launch | Icon, 2–5 honest thumbnails, clear description. Publish; watch first-session retention, the onboarding funnel, Home Recommendations signals in Creator Hub. | You know which onboarding step loses the most players, and you've shipped a fix for it. |
| 8. Monetize | When retention holds: passes for permanent value, products for repeatables, official `ProcessReceipt`, PolicyService gate for any paid randomness. Shop funnel with `LogFunnelStepEvent`. | A player who never pays still has a complete, fun game. |
| 9. Grow | Small ad tests, update every 2–4 weeks, player feedback channel, notifications opt-in. | You have the next three updates on a calendar. |

### Genre loop map

`->` means "leads to", **[brackets]** mark the progression engine. This is a synthesis of
the loop videos and Roblox's genre definitions, not taken from one video.

```
SIMULATOR   swing tool -> backpack fills -> sell -> coins -> [better tool / pet]
            -> faster -> next zone -> [REBIRTH: reset coins, keep a multiplier]

TYCOON      droppers make cash -> collect -> buy next button -> income up
            -> base complete -> [REBIRTH or next plot]   (without this, the game ENDS)

OBBY        try stage -> fall -> checkpoint -> retry -> clear -> coins
            -> [trails, cosmetics] -> next stage -> [harder tower / speedrun leaderboard]

RNG / AURA  free roll (cooldown) -> reveal -> "1 in N" rarity -> equip aura others see
            -> index fills -> [luck upgrades earned by play] -> roll again

ROUND-BASED lobby -> round + roles -> play -> results -> XP + coins
            -> [rank, cosmetics] -> next round  (round reset = built-in catch-up)
```

| Genre | Juice moment to nail first | Social layer | Fair things to sell |
|---|---|---|---|
| Simulator | The swing/collect hit and the sell | Co-op zones, trading pets, leaderboards | Auto-collect pass, cosmetic pets, extra storage |
| Tycoon | Cash collect and each new build appearing | Visit/rate bases, co-own a plot | Faster droppers pass (PvE only), decorations |
| Obby | Landing a hard jump, checkpoint flag | Race friends, speedrun boards | Trails, emotes, a skip-stage product priced fairly |
| RNG / aura | The reveal animation for rare rolls | Showing auras in a hub, trading | Cosmetics, roll speed (odds shown if paid!) |
| Round-based | The win screen and round start | Parties, friend teams | Cosmetics, emotes, private servers |

---

## What to avoid

Every topic flagged these. Roblox's audience is young, and many are also Roblox policy
violations:

- Fake urgency: countdowns that restart, permanent "sales", "only 2 left!" when untrue.
- Energy timers or walls you then sell skips for.
- Hidden odds on anything bought with Robux; "you win nothing" outcomes.
- Pay-to-win against other players.
- Stacked pop-ups, buy prompts where "Play" used to be, tiny close buttons, guilt-trip
  "No thanks" wording.
- Thumbnails or titles that don't match the game; implying free Robux.
- Making invites or notification opt-in a requirement to keep playing.
- Treating view counts and "I made $10M Robux" headlines as proof. None of the
  revenue claims in these videos could be verified, and the creators behind the
  "viral in 24 hours" videos bring their own large audiences.

## Things that changed in 2025–2026 (older videos are out of date)

- Home recommendations moved to 28-day signals in June 2026 and added first-play bounce
  rate and play-through rate; August 2026 added more weight on long-term retention and
  sustainable monetization.
- The Highly Engaged Player threshold for Roblox Kids & Select dropped from 500 to 250
  (August 2026). Videos that say 500 are outdated.
- Premium Payouts ended July 24, 2025; Creator Rewards replaced them.
- DevEx pays $0.0038 per Robux (raised from $0.0035 in September 2025).
- Cross-game pass and product sales ended May 30, 2026.
- "Game passes" are now called "Passes".

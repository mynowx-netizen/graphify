# First-hour prompt: CRUMBLE CREW (give this to the same Claude Code session that is building the game)

---

You are building **CRUMBLE CREW** from `CRUMBLE_CREW_BUILD_PROMPT.md`. This document adds
**the first hour of play**: exactly what a brand-new player sees, does and feels from the
moment they join until minute 60, and the systems that make them stay.

**When to apply each part:**
- **Part A** (the first 3 minutes) **replaces section 5.3** of the build prompt. Build it in
  Phase 2.
- **Part B** (minutes 3–60) needs Phase 3 systems (Depot, saving, upgrades, Artifacts,
  quests). If a system doesn't exist yet in the current phase, build the hook (data field,
  config entry, empty function) and finish it when the system lands.
- **Parts C–F** (rules, tech, measurement, tests) apply to both.

All the invariants and ground rules of the build prompt still hold. In particular:
- verify every Roblox API in the docs before you use it;
- all numbers live in `Config/`;
- the server decides every outcome;
- never publish and never spend Robux.

Stop and report after Part A, and again after Part B, using the build prompt's report format.

---

## Why the first hour matters (the facts this design is built on)

- **Roblox's own home-page ranking** counts players who leave in their first 60 seconds,
  or within 61–180 seconds, **against** the game. Other ranking signals:
  - how many players who see the game's tile go on to play it;
  - how many days per week players come back, and how long they play, measured over day 1,
    days 2–7 and days 8–28;
  - how many days players play with friends.
- **Roblox's onboarding guidance:** get players to the fun "ideally in 5 minutes or less".
  Teach with visual cues, show a tip the first time a feature is used, and give hints only to
  players who seem stuck.
  - Don't put a starter-pack offer in front of a player on their very first load.
- **Day-1 return** depends on the core loop, the first session and performance. **Day 7**
  depends on progression. **Day 30** depends on new content and social systems.

So the first hour has three jobs:
1. Make the **first 60 seconds** impossible to bounce from.
2. Make the **first 15 minutes** prove the loop is fun and that it changes every run.
3. Make the **first hour** end with a reason to come back tomorrow, and with friends.

---

## The emotional arc (design target)

| Minutes | Player should feel | Our job |
|---|---|---|
| 0–1 | "Whoa, I'm already doing something funny" | Zero menus. Item in hands. Big feedback |
| 1–3 | "Ha, we did it together" | First duo carry, first collapse escape, first receipt |
| 3–15 | "It's different every time, and I'm getting stuff" | New building each run, first Artifact, first unlock |
| 15–30 | "I'm getting better, and I want that upgrade" | Visible goals, first purchase with earned Cash, a friend invite |
| 30–45 | "There's more to this" | New tool, a harder contract, a nuisance surprise |
| 45–60 | "Tomorrow I'm unlocking the ship" | Site 2 unlocked or nearly, dailies, streak, pity bar |

**Pacing rule:** something new, rewarding or surprising every **3–5 minutes**. It can be a
new toy, an unlock, a visible goal completed, or a funny event. Never two pop-ups at once.
Never a wall of text.

---

## PART A: The first 3 minutes ("First Shift"), Phase 2

### A1. Join flow

| Time | What happens |
|---|---|
| 0.0 s | Player joins. **No splash screen, no logo, no menu, no "What's new", no shop.** Load straight into the tutorial building ("First Shift": a fixed-seed, hand-arranged Mansion with 5 rooms) |
| ≤ 5 s | Character spawns in the Start Hall **already holding the Vase** (server attaches it through CarryService on spawn) |
| 5–8 s | Gus speaks (one short voice line plus a 2-line subtitle): "Truck's outside, rookie. GO GO GO!" A Beam floor arrow runs from the player to the truck. The truck honks twice |

- **Who gets this flow:** only new players (`meta.tutorialStep < 99`).
- **Returning players:** load into the Depot (Phase 3) or straight into a normal run
  (Phase 2), with a one-line "Welcome back" toast.
- **The first-item target:** under **15 s** from join to holding an item, on a mid-range
  phone. Measure it.

### A2. Beat-by-beat script (server `OnboardingService`, client `Onboarding`)

Each beat has a trigger, what happens, and a **stuck hint** if the trigger doesn't fire in
time.

| Beat | Trigger | What happens | Stuck hint (only if not done after N s) |
|---|---|---|---|
| B1 Deliver | Join | The Beam arrow points to the truck. The truck bed glows | 12 s: the arrow pulses and the truck honks again. 20 s: a dotted path is painted on the floor |
| B2 First deposit | Vase deposited | Big "+$120", confetti, coin sound, truck bounce. Gus: "THAT'S how it's done!" | — |
| B3 Too heavy | Auto, 1 s after B2 | Camera eases to the Grandfather Clock (1.5 s), then back. A Highlight appears on the clock. Gus: "Too heavy for one. Grab an end!" | 10 s: arrow plus a "GRAB" label on the button |
| B4 Duo carry | Clock lifted by 2 carriers | A "TEAMWORK!" pop. **Solo:** Gus Jr. (a helper bot) runs over and grabs the other end automatically when the player grabs. **Multiplayer:** a friend's grab counts | 15 s with only drag mode: Gus Jr. waves: "I've got this end!" |
| B5 Collapse | Clock deposited, or 70 s total | The ceiling behind the crew cracks (3 s telegraph, red outline). Then a section falls **behind** them (never on them in the tutorial). Gus: "MOVE IT!" Integrity bar shows 30% | — |
| B6 Grab & go | Auto | 3 small items lie along the path to the exit (Spoon, Picture Frame, Teacup Set). Gus: "Grab what you can on the way out!" Optional | — |
| B7 Extract | Player in exit zone, quota met (tutorial quota **600**: Vase 120 + Clock 600 = 720) | The EXTRACT button appears with a pulsing ring. Hold for 2 s | 8 s in zone: "Hold EXTRACT" label with a hand icon |
| B8 Receipt | Extract | The Haul Receipt (see A4). The PLAY AGAIN button is the biggest thing on screen | — |
| B9 Hand-off | Receipt closed, or PLAY AGAIN | **Phase 3:** Depot arrival beat (B10). **Phase 2:** straight into run 2 |

- **The tutorial run cannot fail.**
  - The integrity bar starts at 60% and only drops to 30%.
  - Collapses never hit players.
  - Nuisances are off.
  - If the player wanders off for 90 s, Gus Jr. carries the clock out with them.
- **Total time target:** 1:30–2:30. Nothing in the tutorial needs reading more than one line
  of text.

### A3. Gus Jr. (helper bot), used in the tutorial and in the first 3 solo runs

- A server NPC (Humanoid rig with a crew uniform) that follows its player at about 6 studs.
  Its movement uses `PathfindingService` waypoints and `Humanoid:MoveTo`.
- **Carrying:** when the player grabs a Heavy item, Gus Jr. walks to the other end within
  2 s and joins the carry through CarryService as a pseudo-carrier: lift capacity 15, never
  the network owner. The server owns the bot's attachment.
- **Helping:** Gus Jr. never picks targets on his own, never takes credit for value, and
  never revives (it's a helper, not a player). He does show a "Help!" bubble pointing at a
  downed player.
- **Leaving:** after the player's 3rd completed run, Gus Jr. says "You're ready, rookie. Go
  find a real crew!" and leaves. That leads into the invite prompt (see B5 in Part B). Solo
  players can still play fine without him: Dolly, scaled quotas.
- **Multiplayer:** Gus Jr. never spawns if the run has 2 or more real players.

### A4. The Haul Receipt (first one is special)

- **Show:**
  - "$ HAULED", counting up;
  - quota ✓;
  - time left;
  - items saved / broken;
  - **one funny stat** (e.g. "Clock bumps: 4", "Vase survived: barely");
  - XP bar filling, and for the first time, "LEVEL 2 UNLOCKED: Scanner".
- **First receipt only:** stamp "FIRST SHIFT COMPLETE" with a badge (badge ID `0` until I
  create it).
- **Buttons:** **PLAY AGAIN** (huge, same crew, goes straight into the next run) and DEPOT
  (small).
- **Auto-continue:** after 12 s with no input, a cancellable "Next run in 5…" countdown
  starts (Config `FirstHour.autoContinue = true`). One tap cancels it. Never auto-continue
  after a disconnect or when the player is in a menu.

### A5. Funnel logging for Part A

Log on the **server** with `AnalyticsService:LogOnboardingFunnelStepEvent(player, step, name)`,
once per player, in order:

| Step | Name |
|---|---|
| 1 | Joined |
| 2 | HoldingFirstItem |
| 3 | FirstDeposit |
| 4 | DuoCarry |
| 5 | CollapseSeen |
| 6 | FirstExtract |
| 7 | FirstReceiptClosed |
| 8 | SecondRunStarted |

Also log `LogCustomEvent(player, "TimeToFirstItem", seconds)` and
`LogCustomEvent(player, "TutorialDuration", seconds)`.

### A6. Part A acceptance (you run these)

1. **MCP playtest as a brand-new profile** (Mock store, wiped). Measure:
   - time to holding an item: **< 15 s**;
   - first deposit: **< 30 s**;
   - tutorial complete: **< 3:00**.
   Report all three.
2. **Idle test:** a player who does nothing for 3 minutes still sees every stuck hint fire
   in order, and Gus Jr. finishes the clock carry. No errors.
3. **Returning-profile test:** `tutorialStep = 99` skips straight past the tutorial.
4. **Two-player test** (or a DevCommands second carrier): Gus Jr. does not spawn, and the duo
   carry counts.
5. **Screen captures** at phone landscape (around 844×390) of B1, B3, B7 and the receipt.
   Every text readable, nothing clipped, one instruction on screen at a time.
6. **Console:** 0 errors.

---

## PART B: Minutes 3–60 ("Rookie Week" arc), Phase 3

### B1. Rookie rules (first 3 real runs per player; values in `Config/FirstHour.luau`)

| Rule | Value | Why |
|---|---|---|
| Rookie quota factor | ×0.7 on top of the crew factor | Early success. A failed run 2 is the biggest early quit risk |
| Contract choice | The board shows 1 highlighted "Rookie Contract" (Mansion Small, no modifiers) plus the normal list | One obvious choice, no decision paralysis |
| Nuisances | Run 1: 1 raccoon, 0 roombas. Run 2: normal. Run 3: normal | Introduce one thing at a time |
| First container | The first Safe a player opens **always** contains an Artifact (Rare or better) | A guaranteed early "wow". It's labelled "Your first Artifact is guaranteed!" and isn't random-for-Robux |
| Gus Jr. | Joins solo players for these 3 runs | Solo players can still do duo carries |
| Pay | Normal payout formula, but the time bonus is ×1.5 | Feel rich early |
| Failure | A failed run pays 50% and shows "SO CLOSE: you needed $X more" with a retry button | Make failure motivating, not punishing |

These rules switch off automatically after run 3, or at Crew Level 4, whichever comes first.

### B2. The first-hour beat sheet (solo pacing; friends move faster)

**These are targets to tune, not promises.** Runs are Mansion Small (6 min) plus about
1.5 min in the Depot or receipt, so about 7–8 runs fit in an hour.

**XP math from the build prompt:**
- per run: `50 + payout/20 + 100` when the quota is met, about 200–230;
- XP to reach the next level: L2 100, L3 254, L4 440, L5 649;
- so about 1,443 XP total reaches **Level 5 around minute 50–60**.

| ~Minute | Event | Implementation notes |
|---|---|---|
| 3 | **Depot arrival.** Free Dolly granted with a short "tool get" animation. The Contract Board glows; the Rookie Contract is pinned | Dolly unlocks at L1 (build prompt 11.5). One toast, one highlight, nothing else |
| 4 | Run 2 starts (Rookie, new seed: "it's a different house!") | Show "NEW BUILDING" on the loading card with the seed's room count |
| ~8 | **First Artifact** from the first Safe (guaranteed). Reveal with sparkle, rarity, odds line, and "Carry it out to keep it!" | Artifacts are physical items; extraction counts it |
| ~10 | Receipt: **Level 2: Scanner unlocked.** Back in the Depot: **Museum unlocks.** Arrow to "Place your Artifact"; place it on plinth 1 | Funnel: FirstArtifactPlaced |
| ~11 | **Daily quests reveal** (3, picked from a rookie-friendly pool so all can finish in the first hour): "Haul 6 items", "Carry a Heavy item with a crewmate", "Extract with 30 s left" | Quest UI is a small checklist on the Depot HUD |
| 12–20 | Run 3: the first real raccoon steal attempt (scripted spawn near a Light item the player passes) | Toast on first theft or stop: "Raccoons steal small stuff. Bump them!" |
| ~20 | **Gus Jr. leaves** (after run 3), then the **invite prompt** (see B5) | The invite rewards are cosmetic (badge, sticker) plus the friend crew bonus |
| ~21 | **First purchase moment:** ~$4–5k earned. Shop "Next upgrade" card: Dolly II ($500) or Scanner II ($400). Truck II ($2,000) is at L3 | Cash only. No Robux prompt, ever, in the first session |
| 22–30 | Run 4. **Level 3.** The goal tracker switches to "Truck II: $X / $2,000" | The goal tracker always shows the nearest affordable, meaningful goal |
| ~30 | **First modifier contract** appears: "Slippery Floors +15%". Optional | New-player choice that feels like a dare |
| 30–40 | Run 5. **Level 4: Cart unlocked** (carry 3 Light items at once). Toast explains it with a 3-second looping demo clip (in-engine preview) | One new verb |
| ~40 | Daily quests likely all done: **first Tokens.** Token shop opens with one cosmetic (a hard hat) the player can afford now | First cosmetic = identity |
| 40–50 | Run 6: a Medium contract unlocks (Mansion Medium, 8 min). Teaser card: "Sinking Cruise Ship: Level 5" with a 4-second preview of the tilting deck | A visible next site is the biggest "come back" hook |
| 50–60 | Run 7. **Level 5. Ship unlocked** (permit $1,500, affordable by now). If time allows, the first Ship run; otherwise the session ends with "Ship unlocked!" waiting | Funnel: SiteTwoUnlocked |
| End / leave | Day-1 hooks (see B6) | — |

**If they leave early:** the goal tracker and day-1 hooks (B6) are already visible from
minute 11 on, so even a 20-minute first session ends with a reason to return.

### B3. The goal tracker (always on screen in the Depot, small card top-left)

- Shows **one** next goal at a time, picked by priority:
  1. an unfinished tutorial beat;
  2. an affordable unlock or upgrade;
  3. the closest daily quest;
  4. the next level unlock (with its reward icon);
  5. Artifact pity progress ("2 more runs until a guaranteed Artifact").
- Tapping it shows how to do it, e.g. it highlights the Contract Board.
- In-run it collapses to a single line under the quota bar.
- **Data:** goals are a priority list in `Config/FirstHour.luau`, so they're easy to reorder.

### B4. Teach one verb at a time (contextual tips)

The first time a player meets each thing, show **one** short tip with a 2–4 s in-engine
preview. Store the "seen" flags in `meta.tipsSeen`.

| Situation | Tip |
|---|---|
| A Heavy item | "Too heavy alone. Grab with a friend, or use the Dolly" |
| A fragile item cracks | "Fragile! Drops cost value" (red flash on the value) |
| First raccoon | "Raccoons steal small stuff. Bump them to make them drop it" |
| First roomba | "Jump on it to stop it" |
| First downed player | "Hold REVIVE on your crewmate" |
| First Safe | "Safes can hold Artifacts. Open with a Crowbar, or pry for 6 s" |
| First modifier | One line describing it, plus the payout bonus |

**Hint timing:** a hint appears only after `FirstHour.hintDelay = 10` s of being stuck.
Never show one if the player is already doing the thing.

### B5. Social in the first hour

- **When to ask for an invite** (once per session, never during a run, never stacked with
  another pop-up):
  1. after Gus Jr. leaves (~minute 20);
  2. otherwise after the first run with a "perfect" or "clutch" stat.
- **How:** `SocialService:CanSendGameInviteAsync` (wrapped in pcall), then `PromptGameInvite`
  with launch data `{partyId = …}` so the friend joins straight into your party.
- **Copy:** "Pianos are easier with friends. Invite your crew?" (no guilt wording).
- **Friend joins mid-run:** they spectate with a "Next run in…" timer and a Practice Yard
  button, then join the party on the receipt.
- **Find Crew** (matchmaking) is offered once on the board at about minute 15: "Want a random
  crew?" Solo stays the default.
- **Friend crew bonus:** +10% Cash, shown on the receipt as its own line.

### B6. Day-1 return hooks (shown when the first session is ending)

**When:** on the receipt after run 5+, and on the leave or Depot-idle screen.

**The "Tomorrow" card** shows up to 3 lines:
- "Daily streak: Day 1 ✓. Come back for Day 2 (+$400)." The streak only pauses; it never
  resets to 0.
- "Your Artifact pity: 3 / 8".
- "Sinking Cruise Ship: unlocked! / Level 5 needs 180 XP".

**Notifications** (once, at a natural moment such as just after a level-up, never during a
run):
1. Ask for opt-in with `ExperienceNotificationService:CanPromptOptInAsync()` (pcall), then
   `PromptOptIn()`.
2. Use only the platform prompt, ages 13+ (the API handles eligibility). Never gate anything
   on it.
3. The template text is my job in Creator Hub, so leave a TODO.

**Favorite prompt:** once, right after the first Level-up or the first Artifact placed. Use
the platform favorite prompt (verify the API in the docs). Never block play.

### B7. What must NOT appear in the first session

- No Robux purchase prompt of any kind: no starter pack, no VIP pop-up, no pass offer.
  The Shop exists and can be opened, but nothing is pushed.
- No timers you can pay to skip (there are none in this game anyway).
- No stacked pop-ups; at most one modal at a time, with a 20 s minimum between modals.
- No text walls (one line, ≤ 60 characters) and no forced menus before the first run.
- No failure in the tutorial, and no harsh failure in runs 2–3 (rookie rules).
- No permanent loss: tools and Cash are never lost; carried items lost to a collapse are just
  not banked.

---

## PART C: Feel and clarity rules for the first hour (apply everywhere)

1. **Juice the most repeated actions first:** grab, carry, deposit. Squash tween, sound
   with random pitch (0.9–1.1), "+$X" pop, truck bounce.
2. **Readable at a glance:**
   - Items show a value tag on highlight.
   - Fragile items show a crack icon; Heavy items show 2–3 weight pips.
   - Teammates who need help show a hand icon.
3. **Camera:** a gentle shake on collapses only (off with reduce-shake). Never move the
   camera without the player's input except for the 1.5 s tutorial focus in B3.
4. **Audio tells the story:** a creak means a collapse is coming. The truck honk means quota
   met. A chitter means a raccoon. Each sound plays with its visual cue the first time, so
   players learn the sound.
5. **Phone first:**
   - Big buttons, minimum 44 px. The context button sits under the right thumb.
   - Text ≥ 14 px at the reference size.
   - Test the smallest phone in the Device Emulator.
6. **Performance is retention:** a stutter in the first 60 seconds is a bounce. Pre-load the
   tutorial building's assets with `ContentProvider:PreloadAsync` on a priority list, and
   keep the tutorial building small (5 rooms, ≤ 25 items).

**Streamer and creator friendliness:**
- A "Hide UI" toggle in settings (and the Photo Mode later), for clean clips.
- No copyrighted music.
- Funny receipt stats are designed to be screenshot-worthy.

---

## PART D: Technical plan

**New and changed modules (follow the build prompt's layout and service contract):**

```
src/shared/Config/FirstHour.luau     -- every number and string ID in this document
src/server/Common/OnboardingService.luau  -- tutorial beats, funnel logging, rookie rules
src/server/Common/FirstHourDirector.luau  -- minute 3-60 beats, unlock reveals, goal priority, day-1 hooks
src/server/Run/HelperBot.luau             -- Gus Jr. (spawn, follow, pseudo-carry, leave)
src/client/Run/Onboarding.luau            -- arrows (Beam), highlights, subtitles, stuck hints
src/client/Common/Hud/GoalTracker.luau    -- the always-on next-goal card
src/client/Common/Hud/TipCard.luau        -- one-line contextual tips with optional preview
src/client/Hub/TomorrowCard.luau          -- day-1 hooks screen
```

**Config sketch (fill in real values, keep the names):**

```lua
-- Config/FirstHour.luau
return {
  tutorial = { seed = 1, quota = 600, startIntegrity = 60, minIntegrity = 30, idleBotAssistSec = 90 },
  hints = { firstDelaySec = 12, secondDelaySec = 20, hintDelay = 10 },
  rookie = { runs = 3, maxLevel = 4, quotaFactor = 0.7, timeBonusMult = 1.5, guaranteedFirstArtifact = true,
             nuisancesRun1 = { raccoon = 1, roomba = 0 } },
  helperBot = { enabled = true, soloRuns = 3, followDist = 6, joinCarryWithinSec = 2, liftCapacity = 15 },
  receipt = { autoContinue = true, autoContinueAfterSec = 12, countdownSec = 5 },
  modals = { minGapSec = 20, maxPerSession = { invite = 1, favorite = 1, notifications = 1 } },
  goals = { "TutorialBeat", "AffordableUnlock", "DailyQuest", "NextLevel", "ArtifactPity" },
  dailyRookiePool = { "haul_6_items", "duo_carry_heavy", "extract_30s_left", "deposit_fragile_intact", "stop_raccoon" },
  streak = { rewardsCash = { 300, 400, 500, 600, 800, 1000, 1500 }, neverResets = true },
}
```

**Data (Schema migration; bump the version and add a migration step):**
- `meta.tipsSeen: { [string]: boolean }`
- `meta.rookieRunsDone: number`
- `meta.firstArtifactGranted: boolean`
- `meta.sessionsCount: number`
- `meta.firstSessionMinutes: number`
- `meta.promptsShown: { invite: number, favorite: number, notify: number }`
  (lifetime counts, so prompts stay rare)
- streak fields if not present

**Tuning without republishing:** expose `rookie.quotaFactor`, `rookie.timeBonusMult`,
`hints.hintDelay`, `helperBot.enabled`, `receipt.autoContinue` and the daily pool through
`ConfigService:GetConfigForPlayerAsync(player)`, with these defaults as fallbacks. Verify
the API in the docs.

**DevCommands** (Studio only) for testing:
- `resetProfileToNew`, `skipToMinute(n)` (grants the XP and Cash of that point in the beat
  sheet), `forceStuck(beat)`, `spawnRaccoonNearMe`, `simulateFriendJoin`,
  `printFirstHourState`.

---

## PART E: Measurement (so we know it works)

**Funnel steps 9–16** (continue the onboarding funnel; server-side, once per player, in order):

| Step | Name |
|---|---|
| 9 | DepotArrived |
| 10 | FirstArtifactPlaced |
| 11 | DailyQuestsSeen |
| 12 | FirstUpgradeBought |
| 13 | ThirdRunCompleted |
| 14 | Level3 |
| 15 | Level5 |
| 16 | SiteTwoUnlocked |

**Custom events:**
- `SessionMinutes`, logged on leave;
- `RunsPerSession`;
- `InvitePromptShown` / `InviteSent`;
- `FriendJoined`;
- `RookieRunFailed`, with the shortfall;
- `HintShown`, with the beat ID (this tells us where players get stuck);
- `TomorrowCardShown`.

**Internal goals for playtests** (our own targets, not Roblox benchmarks; adjust after real
data):
- 95%+ of new players reach FirstDeposit.
- 85%+ reach SecondRunStarted.
- 60%+ reach ThirdRunCompleted.
- The median first session is 25+ minutes.
- No beat has a stuck-hint rate above 30%.

**Experiments to set up for me** (Creator Hub Experiments plus Configs; I'll start them):
1. Gus Jr. on vs. off for solo rookies.
2. Rookie quota factor 0.6 vs. 0.7 vs. 0.8.
3. Receipt auto-continue on vs. off.
4. Invite prompt at minute ~20 vs. after the first "clutch" receipt.

Write `docs/FIRST_HOUR.md` explaining each experiment, its metric (session minutes,
day-1 return, SecondRunStarted), and how to read the result.

---

## PART F: Acceptance tests for Part B

1. **Fast-forward simulation:** using DevCommands, play through the beat sheet with
   `skipToMinute` checkpoints. Every beat fires once, in order, with no stacked modals.
2. **Lune economy test:** simulate a solo rookie for 60 minutes (7 runs with the payout
   formula and rookie rules). Report the minute each unlock happens: L2, Scanner, Museum,
   first upgrade, L3, L4, Cart, L5, Ship. Flag any gap over 8 minutes with nothing new.
3. **Guaranteed first Artifact:** works exactly once per account and never again.
4. **Rookie rules:** switch off after run 3 or Level 4.
5. **No Robux prompt anywhere in a brand-new player's first session.** Search the codebase for
   every `Prompt*Purchase` call site and prove it's gated by `meta.sessionsCount > 1` or by
   an explicit player action (opening the Shop and tapping Buy).
6. **The goal tracker** always shows exactly one goal, and the goal changes correctly at each
   beat.
7. **Phone screen captures:** the goal tracker, a tip card, the Tomorrow card, the Museum
   placement, the receipt with a level-up.
8. **Console:** 0 errors across a 60-minute fast-forward run.

Then stop and report.

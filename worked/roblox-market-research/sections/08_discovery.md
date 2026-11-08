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

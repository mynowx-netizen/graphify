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

{{MISTAKES}}

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

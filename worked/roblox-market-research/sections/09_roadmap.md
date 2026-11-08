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

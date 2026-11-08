# Starter kit

Small Luau scripts for the playbook techniques that need code. Paths in each file's
header say where it goes in Studio (or a Rojo project: `*.server.luau` = Script,
plain `*.luau` = ModuleScript).

| File | Technique (PLAYBOOK.md) | What it does |
|---|---|---|
| `Onboarding.server.luau` | 1. Fun in the first minute | Logs first-session steps as an onboarding funnel, in order, server-side |
| `Tuning.luau` | 4. Tune live | Reads numbers from Experience Configs with safe defaults; XP curve helper |
| `Juice.luau` | 3. Juice | Press feedback for buttons, floating "+N" numbers; honours Reduce Motion |
| `Invites.luau` + `JoinFriend.server.luau` | 6. Social | Friend invite with launch data; invited friend spawns beside the inviter |
| `PaidRandomGate.luau` | 11. Fair monetization | PolicyService check before offering paid random items |

For developer product purchases, use Roblox's official `ProcessReceipt` sample rather
than writing your own:
https://create.roblox.com/docs/reference/engine/classes/MarketplaceService#ProcessReceipt

Analytics funnel events only record from the server in a published game, not in
Studio. These scripts were written against the Roblox Engine API reference
(2026-11-08) but have not been run in Studio here; test them in a place first.

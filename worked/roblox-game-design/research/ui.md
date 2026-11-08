# Topic: UI / UX, HUDs, fonts, menus, Roblox GUI scaling and styling

Note: the shared WebSearch budget ran out partway through, so several C videos got only one search. Roblox docs and DevForum were read directly with curl.

## Videos

| rank | title | channel | views | evidence | 1-line takeaway |
|---|---|---|---|---|---|
| 1 | world's shortest UI/UX design course | Juxtopposed | 2,196,622 | B | Plan the user flow and wireframes before visuals; build a deliberate color palette |
| 2 | The Power of Video Game HUDs | Game Maker's Toolkit | 1,036,695 | B | HUD design changes how a game plays, not just how it looks |
| 3 | The Power of Font In Video Games | Juniper Dev | 882,254 | C | Font sets the game's mood (inferred) |
| 4 | Good Design, Bad Design - Graphic Design in Games | Design Doc | 855,954 | C | Graphic design choices can help or hurt play (inferred) |
| 5 | How To Make GUI \| Roblox Studio | Kingkade 3D | 695,065 | C | Beginner ScreenGui setup (inferred) |
| 6 | So You Wanna Make Games?? Ep 9: UI Design | Riot Games | 533,093 | B | Good UI goes unnoticed; critical info must be one glance away |
| 7 | The Laws of UX - 19 Psychological Design Principles | Joseph Todaro | 363,254 | C | Walks through Jon Yablonski's Laws of UX (inferred) |
| 8 | Essential UI Tips & Tricks \| Roblox Studio | Stewiepfing | 318,271 | C | Fixes for Roblox UI quirks, starting with UIStroke (inferred) |
| 9 | Inventory UX Design (Zelda, RE, Doom) | Design Doc | 309,601 | B | Inventories have evolved; menu UX is design, not decoration |
| 10 | Clarity vs. Style [UI] | Masahiro Sakurai | 283,728 | A | Clarity and style can conflict; neither wins by default, so match it to the game |
| 11 | How to SCALE GUI like a PRO | Itz_FloppyFish | 194,068 | C | Scale buttons, frames and scrolling frames for every device (inferred) |
| 12 | How Modern Roblox UI Actually Works | Leif | 181,301 | C | Pro Roblox UI built with React Luau (inferred) |
| 13 | How to style your UI on Roblox | Roblox Creators | 176,538 | B | Use the Style Editor: style sheets, tokens, themes |
| 14 | Making Good UI is EASY, People Are Just Lazy | ByteBlox | 175,461 | C | Good UI is about effort, not talent (inferred) |
| 15 | Make Your Roblox UI Look 10x Better | Develuper | 157,777 | A | Give UI an identity and depth: darker shape behind the button, gradients, shine |
| 16 | The Ultimate Beginner's Guide to Roblox GUI | Kek | 144,776 | C | ScreenGui, Frames, Scale vs Offset basics (inferred) |
| 17 | Designing the UI for my Farming Game | ThinMatrix | 138,978 | C | Indie devlog on UI for a casual farming game (inferred) |
| 18 | Make Your Roblox UI Buttons SUPER Smooth | PineappleDev | 136,603 | C | Hover-grow / leave-shrink button tweens |
| 19 | The Art of Game UI - Good VS Boring | Angelikatosh | 131,473 | C | UI is an art form; boring UI is a missed chance (inferred) |
| 20 | Great and Terrible UX Design in Games | Design Doc | 117,526 | C | Examples of good and bad game UX (inferred) |

Evidence count: A = 2, B = 5, C = 13.

## Per-video notes

**1. Juxtopposed (B).** Sources: auto-generated aggregator summaries, so weak (https://sales.communityimpact.com/world-s-shortest-ui-ux-design-course.html, https://landing-page-bhxssx9ei-databerry.vercel.app/tools/youtube-summarizer/worlds-shortest-ui-ux-design-course-wIuVvCuiJhU).
- Covers "the 20% of UI design you'll be dealing with". Stresses fundamentals and standard practice first.
- Chapter outline: user flow, wireframes, UI vs UX vs web design, picking a design tool, color theory, building a color palette.

**2. GMTK HUDs (B).** Sources: Amara transcript excerpt (https://amara.org/en/videos/izVGIyScVfOY), Persian written adaptation (https://www.digikala.com/mag/gmtk-power-of-huds/), episode listing (https://thetvdb.com/series/game-makers-toolkit/episodes/8398338).
- Thesis: the HUD can change how a game works, feels, looks and is made.
- Health and stamina bars shape how people play. A bar makes a hidden value visible, and players react to what they can see.
- Naughty Dog started The Last of Us UI with about eight months left. Other examples: Control, Crackdown 3, Metro Exodus, Overwatch.

**3, 4, 5 (C).** No write-ups found. Inferred: font carries the game's "vibe" and energy (3); a good/bad comparison of menus, icons and type (4); beginner StarterGui → ScreenGui → Frame/Button setup (5).

**6. Riot Games Ep 9 (B).** Sources: https://www.riotgames.com/en/artedu/user-interface-design, https://sheroesingames.unq.edu.ar/wiki/index.php/Interface_Design_by_Riot_Games_(Video)
- Tagline: players never mentioning the interface is a sign of good design. UI is often overlooked yet among the most critical parts of a game.
- Players need immediate access to stats, inventory, mission info and location.
- Contrasts UX and UI; visual and motion-graphics designers explain keeping the interface consistent and immersive.

**7. Laws of UX (C).** The description credits Jon Yablonski's Laws of UX (Jakob's, Fitts's, Hick's, Miller's laws, Peak-End, Aesthetic-Usability, Von Restorff, and others). Which 19 the video covers is unverified (inferred).

**8. Stewiepfing (C).** Snippet chapters start "Fixing UIStroke Bug". Inferred: probably pixel-based stroke thickness that doesn't scale; `UIStroke.StrokeSizingMode = ScaledSize` now fixes it (https://create.roblox.com/docs/reference/engine/enums/StrokeSizingMode).

**9. Design Doc, Inventory UX (B).** Source: student blog citing it (https://journal.falmouth.ac.uk/sc247065/?p=936).
- Traces the history of game inventories and how they evolved.
- I found no reliable source for its specific Zelda, Resident Evil or Doom claims. Third-party articles about those games were not used.

**10. Sakurai, Clarity vs Style (A).** Sources: https://personacentral.com/masahiro-sakurai-persona-5-ui/, https://en.senkohome.com/sakurai-game-dev-ui/, https://www.gonintendo.com/contents/10042-masahiro-sakurai-tackles-clarity-versus-style-in-his-latest-video
- A clear UI and a very stylish UI can work against each other. "You can't conclude a clear UI is good and an unclear one is bad."
- Persona 5's UI is hard to call tidy and can startle at first glance, but a flavorless menu would be worse.
- Metaphor: UI is like a drawer. Tidier is better, but how much each game has to stuff in varies.
- Takeaway: choose the balance that fits the game.

**11. Itz_FloppyFish (C).** Snippet: scale in-game GUI to fit every screen on any device, covering buttons, frames and ScrollingFrames, in a 40-minute video. Inferred: Scale-based sizing plus aspect-ratio constraints. DevForum scaling guides agree (https://devforum.roblox.com/t/complete-comprehensive-roblox-ui-scaling-guide/2232510).

**12. Leif (C).** Snippet: building a game with React Luau "like the pros"; a DevForum user points learners to Leif for React Lua (https://devforum.roblox.com/t/4260540). Roblox maintains React Luau and uses it for its own app (https://devforum.roblox.com/t/how-to-react-roblox/2964543).

**13. Roblox Creators, styling (B).** Official announcements link it as the step-by-step Style Editor tutorial (https://devforum.roblox.com/t/3901480, https://devforum.roblox.com/t/full-release-ui-styling-is-officially-released/4275082).
- Chapters: Style Sheets, Tokens, and more.
- Manage all UI colors and fonts in one place, restyle many instances at once, swap themes (light/dark).
- Building blocks: StyleSheet, StyleRule, StyleLink, StyleDerive. Fully released 20 Jan 2026.

**15. Develuper, 10x Better (A).** Source: SozAI transcript and summary (https://sozai.app/transcript/make-roblox-ui-look-better/). The title matches exactly, but the channel name was not visible in the excerpt.
- Use Figma's free tools to go beyond what Studio's editor gives you.
- Good UI = identity (colors, shapes, typography, texture) + depth (elements read as 3D buttons).
- Depth trick: put a darker duplicate shape behind each button, and add gradients, shine and edge highlights.
- Text: Fredoka One with a thick stroke plus the same depth trick.
- Ends with a full shop layout workflow.

**14, 16-20 (C).** Snippets only. ByteBlox (14): common mistakes come from skipped polish (inferred). Kek (16): ScreenGui, Frames, Scale vs Offset. ThinMatrix (17): the only fact found is that Homegrown is a minimalist, clicker-style farming game; UI content unknown. PineappleDev (18): the button grows on hover and shrinks back on leave, so probably TweenService on MouseEnter/MouseLeave (inferred). Angelikatosh (19) and Design Doc (20): expressive vs generic UI, and good vs bad UX case studies (inferred).

## Top techniques for this topic

**1. Scale-first layouts, clamped with constraints.** Backed by 11, 16, 5, 8 (C) and 13 (B); official docs strongly agree.
How to apply in Roblox:
- Size and position containers in `UDim2` Scale. Center with `AnchorPoint = (0.5, 0.5)` and `UDim2.fromScale(0.5, 0.5)`.
- Add `UIAspectRatioConstraint` to icons, cards and panels so they don't stretch.
- Add `UISizeConstraint` so panels don't shrink to nothing on phones or bloat on TVs (the docs warn 75% width is huge on 4K).
- Use Offset only for padding, strokes and small fixed pieces. Set `UIStroke.StrokeSizingMode = ScaledSize`.
- Arrange with `UIListLayout`/`UIGridLayout` + `UIPadding`; give ScrollingFrames `AutomaticCanvasSize`.
- Check every screen in the Studio Device Emulator.

**2. Thumbs and safe areas first.** Backed by 11, 16 (C, inferred) and 6 (B); detailed official guidance.
How to apply in Roblox:
- Keep `ScreenGui.ScreenInsets = CoreUISafeInsets` (default) for anything tappable; `None` only for background art.
- Keep the bottom corners free (thumbstick, jump). Put frequent buttons in thumb reach, positioned relative to `JumpButton` as the docs show.
- Place top-bar items with `GuiService.TopbarInset` / `GetInsetArea()`.
- Use `GuiService.ViewportDisplaySize` (Small/Medium/Large) to switch to bigger buttons, and `UserInputService.PreferredInput` or `InputActionLabel` to swap input hints.

**3. Show only what matters right now.** Backed by 2, 6, 9, 1 (B) and 7 (C).
How to apply in Roblox:
- For each game state (exploring, fighting, shopping), list what the player must know and do; hide the rest.
- Use `ProximityPrompt` instead of always-on "Open" buttons. Swap contextual buttons via `ScreenGui.Enabled` / `Visible`.
- Hide default UI you replace with `StarterGui:SetCoreGuiEnabled`. Layer modals with `DisplayOrder`.
- GMTK's point: players optimize around whatever the HUD shows, so a visible stamina bar teaches stamina management.

**4. Clarity first, then a style that fits the game.** Backed by 10 (A), 15 (A); 3, 4, 19 (C).
How to apply in Roblox:
- One display font for titles, one plain font for body text (`FontFace`).
- `UIStroke` or `UIShadow` on text over the 3D world. Run contrast and grayscale checks.
- Put style into color, shape and motion, not hard-to-read decorative type.

**5. One visual language, managed in one place.** Backed by 13, 6, 1 (B) and 15 (A).
How to apply in Roblox:
- In the Style Editor, make tokens for colors, fonts, corner radius and spacing. Apply StyleRules by class or CollectionService tag; add themes for light/dark.
- Use StyleQuery built-ins (`@ViewportDisplaySizeSmall`, `@PreferredInputTouch`, `@PreferredTextSizeLarge`) to adapt for phones without scripts.
- Follow known conventions: red X top right, gray = disabled, lock icon = locked, red price = can't afford.

**6. Buttons that look pressable.** Backed by 15 (A); 14, 8, 19 (C). Official docs: containers plus highlights/shadows suggest 3D depth.
How to apply in Roblox:
- A darker copy of the button frame a few pixels lower, behind the face (or `UIShadow`), plus a top-light `UIGradient`, `UICorner`, `UIStroke`. On press, drop the face onto the shadow.
- Imported art: `ImageButton.HoverImage`/`PressedImage` and 9-slice (`ScaleType = Slice`). Mock up in Figma, export, rebuild in Studio.

**7. Every tap gets an answer.** Backed by 18 (C), 6 (B, motion-graphics team), 15 (A).
How to apply in Roblox:
- Tween a child `UIScale.Scale` with `TweenService`: slight grow on `MouseEnter` (desktop), shrink on `MouseButton1Down`. Run the action on `GuiButton.Activated` (mouse, touch, gamepad). Keep tweens short; add a click sound.
- No-script option: Style Editor GuiState selectors (Hover, Press) with style transitions.
- `ReducedMotionEnabled` → tween time 0. Don't tween `UIStroke.Thickness` on text (docs: flicker, performance).

**8. Plan flows before pixels; cut taps from menus and inventory.** Backed by 1, 9 (B); 7, 20 (C). Official docs: flow charts and friction.
How to apply in Roblox:
- Write each flow out (shop → category → item → buy → close) and count taps.
- Tabs via `UIPageLayout` or frame switching; `UIGridLayout` in a ScrollingFrame; sort and a search `TextBox` for big inventories; instant preview in a `ViewportFrame`.
- Fewer choices per screen (Hick's law) and big, near targets (Fitts's law), inferred from video 7's title.
- Find drop-off with `AnalyticsService:LogFunnelStepEvent`; A/B test layouts with Experiments, as the official UI/UX page recommends.

**9. Respect the player's settings.** Backed by 10 and 3 (clarity theme); official docs back it directly.
How to apply in Roblox:
- Body text uses `TextSize` + `AutomaticSize` + `TextWrapped` so `GuiService.PreferredTextSize` works (`TextScaled` ignores it).
- Multiply `BackgroundTransparency` by `PreferredTransparency`; honor `ReducedMotionEnabled`; never signal with color alone.

**10. Big projects: build UI from components.** Backed by 12 (C, inferred).
How to apply in Roblox:
- Large menu systems can use React Luau (github.com/roblox/react-luau), with Bindings for animation. Small games do fine with Studio-built UI, ModuleScripts and Styling.

## Conflicts and caveats

- **Scale vs Offset.** Beginner tutorials (likely 11 and 16) say "never use Offset". Experienced DevForum posters use Offset for icons, padding and top-bar items, which Roblox core UI does too. In practice: Scale for layout, constraints to clamp it, Offset for small fixed details.
- **TextScaled is popular but costs accessibility.** Text with TextScaled on doesn't follow the player's Text Size setting. If you use it, pair it with `UITextSizeConstraint`; the docs set the minimum readable size at 9. Better still, use AutomaticSize for body text.
- **In-world vs on-screen HUD.** GMTK viewers praise in-world (diegetic) displays like Dead Space's spine health bar, but clear information comes first. On a small phone a BillboardGui health bar can be unreadable, so keep critical values on screen.
- **Style vs clarity.** Sakurai ranks neither first; a loud Persona-like style works only if new players still find things fast.
- **Hover is desktop-only.** Hover-grow tutorials (18) do nothing on touch; always add press feedback.
- **Dark patterns to avoid (young audience):** purchase buttons where thumbs rest or where "Play" used to be; tiny or hidden close buttons; fake countdowns; guilt-trip "No thanks" wording. Highlighting a "best value" bundle is fine (the official docs cite it); hiding cheaper options is not. Paid random items (eggs, crates, spins, luck boosts, even via Robux-bought currency) must show every outcome with numeric odds summing to 100% before purchase; a bare (i) icon is not enough (https://create.roblox.com/docs/production/monetization/paid-random-items).
- **Unverified.** 13 videos are C (inferred from title and snippet). Develuper's A rests on an exact title match (channel not visible in the excerpt). Juxtopposed's outline comes from auto-generated aggregator pages.

## Official Roblox guidance

- **UI/UX principles:** prioritization, attention (color, size, space, proximity, movement, in moderation), visual language, conventions, consistency; feedback for every action; low-friction flows; younger players lean mobile; test HUD layouts with Experiments. https://create.roblox.com/docs/production/game-design/ui-ux-design
- **Safe areas:** `CoreUISafeInsets` (default) for anything interactive, `None` only for backgrounds; also `DisplayOrder`, `ResetOnSpawn`, `SetCoreGuiEnabled`. https://create.roblox.com/docs/ui/on-screen-containers
- **Mobile layout:** avoid reserved bottom corners; respect thumb zones (40% from the top is reachable on a phone, not a tablet); place buttons relative to the jump button; prefer context-based UI. https://create.roblox.com/docs/ui/position-and-size
- **Sizing tools:** UIScale (useful for hover tweens), AutomaticSize, UISizeConstraint, UITextSizeConstraint ("do not use MinTextSize below 9"), UIAspectRatioConstraint. Constraints override layouts. https://create.roblox.com/docs/ui/size-modifiers
- **Cross-platform/adaptive:** Scale sizing, `ViewportDisplaySize`/`PreferredInput` adaptation, Input Action System + InputActionLabel, StyleQuery, Device Emulator; avoid thin or decorative fonts; test on real devices. https://create.roblox.com/docs/projects/cross-platform and https://create.roblox.com/docs/production/publishing/adaptive-design
- **Accessibility:** PreferredTextSize, PreferredTransparency, ReducedMotionEnabled; contrast; never color alone (over 5% of people are color-blind). https://create.roblox.com/docs/production/publishing/accessibility
- **Styling system:** StyleSheet, StyleRule, StyleLink and StyleDerive, with tokens, themes, GuiState selectors and transitions. Fully released 20 Jan 2026; StyleQuery (including PreferredTextSize queries) fully released May 2026. https://create.roblox.com/docs/ui/styling, https://devforum.roblox.com/t/full-release-ui-styling-is-officially-released/4275082, https://devforum.roblox.com/t/4566519
- **Animation:** TweenService with Scale targets; UIAspectRatioConstraint when tweening size; don't tween UIStroke thickness on text. https://create.roblox.com/docs/ui/animation, https://create.roblox.com/docs/ui/appearance-modifiers

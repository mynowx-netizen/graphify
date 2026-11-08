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

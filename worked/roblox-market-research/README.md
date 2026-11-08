# Roblox Top 100 market research (snapshot 2026-11-08 18:23 UTC)

- `REPORT.md`: the full report. It has 12 sections: research, classification, patterns,
  opportunities, 20 concepts, ranking, the CRUMBLE CREW design doc, discovery, roadmap,
  Claude Code architecture, the Blender workflow and the final verdict.
- `data/top100_data.json`: verified data from Roblox's public APIs for each game. That
  covers CCU, visits, favorites, votes, dates, genre, sorts, description, passes and a
  product sample.
- `data/analysis_all.json`: per-game design analysis. Each field is tagged
  verified/reported/analysis and carries source URLs.
- `data/roblox_sorts_snapshot.json`: the raw official explore sorts (Top Playing Now,
  Trending, Up-and-Coming, Fun with Friends, Top Revisited).
- `data/monetization_passes_products.json`: all game passes and developer products for
  sale (names and prices).
- `sections/`: source Markdown for each section.
- `build_report.py` + `page_template.html`: rebuild `REPORT.md` and the interactive HTML
  page.

CCU is a single Sunday-afternoon snapshot. Re-pull the data before relying on exact numbers.

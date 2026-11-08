#!/usr/bin/env python3
"""Assemble report/*.md into REPORT.md and an interactive HTML page."""
import html, json, re, sys
from pathlib import Path
import markdown

ROOT = Path(__file__).resolve().parent
R = ROOT / "report"

def read(name):
    p = R / name
    return p.read_text(encoding="utf-8") if p.exists() else f"\n> _{name} missing_\n"

parts = {
    "research": read("01_research.md"),
    "table": read("01b_table.md"),
    "concept1": read("05_concept1.md"),
    "concepts": read("05_concepts_2_20.md"),
    "scoring": read("06_scoring.md"),
    "gdd": read("07_gdd.md"),
    "discovery": read("08_discovery.md"),
    "roadmap": read("09_roadmap.md"),
    "arch": read("10_architecture.md"),
    "blender": read("11_blender.md"),
    "final": read("12_final.md").replace("{{MISTAKES}}", read("12b_mistakes.md").split("\n", 1)[1]),
}
intro = (R / "00_intro.md").read_text(encoding="utf-8") if (R / "00_intro.md").exists() else ""

# ---------- Markdown master ----------
md_all = "\n\n".join([
    intro,
    parts["research"].replace("{{TABLE}}", parts["table"]),
    parts["concept1"], parts["concepts"], parts["scoring"], parts["gdd"], parts["discovery"],
    parts["roadmap"], parts["arch"], parts["blender"], parts["final"],
])
(ROOT / "REPORT.md").write_text(md_all, encoding="utf-8")

# ---------- HTML ----------
MD_EXT = ["tables", "fenced_code", "sane_lists"]
def md(s):
    return markdown.markdown(s, extensions=MD_EXT)

def detailify(section_html):
    """Wrap each <h3> concept block in <details> for the concepts sections."""
    chunks = re.split(r"(?=<h3>)", section_html)
    out = [chunks[0]]
    for c in chunks[1:]:
        m = re.match(r"<h3>(.*?)</h3>(.*)", c, re.S)
        if not m:
            out.append(c); continue
        out.append(f'<details class="concept"><summary><h3>{m.group(1)}</h3></summary>{m.group(2)}</details>')
    return "".join(out)

research_html = md(parts["research"].replace("{{TABLE}}", "<!--TABLE-->"))
research_html = research_html.replace("<p><!--TABLE--></p>", '<div id="t100"></div>').replace("<!--TABLE-->", '<div id="t100"></div>')
c1 = detailify(md(parts["concept1"])).replace("<summary><h3>1. CRUMBLE CREW</h3>", '<summary><h3 class="winner">1. CRUMBLE CREW (#1 pick)</h3>').replace('<details class="concept"><summary><h3 class="winner">', '<details class="concept" open><summary><h3 class="winner">')
concepts_html = c1 + detailify(md(parts["concepts"]))

sections = [
    ("research", "Research", research_html),
    ("concepts", "20 concepts", concepts_html),
    ("scoring", "Ranking", md(parts["scoring"])),
    ("gdd", "Design doc", md(parts["gdd"])),
    ("discovery", "Discovery", md(parts["discovery"])),
    ("roadmap", "Roadmap", md(parts["roadmap"])),
    ("arch", "Architecture", md(parts["arch"])),
    ("blender", "Blender", md(parts["blender"])),
    ("final", "Verdict", md(parts["final"])),
]

data = json.loads((ROOT / "top100_data.json").read_text())
ana = {a["rank"]: a for a in json.loads((ROOT / "analysis_all.json").read_text())}
rows = []
for g in data:
    a = ana[g["rank"]]; v = g["verified"]
    rows.append({
        "r": g["rank"], "n": a["name"].strip(), "u": g["placeUrl"], "g": a["genres"], "m": a["player_mode"],
        "c": v["ccu_snapshot"], "v": v["visits"], "f": v["favorites"], "l": v["like_pct"], "a": v["age_days"],
        "t": a["trajectory"], "d": a["dev_difficulty"], "loop": a["core_loop"], "ret": a["why_players_return"],
        "mon": a["monetization"]["gamepasses"], "p2w": a["monetization"]["pay_to_win_risk"],
        "succ": a["success_drivers"], "risk": a["sustainability_risk"], "ev": a["evidence"]["level"],
        "src": a["evidence"].get("sources", [])[:4], "gp": v["gamepasses_for_sale"], "dp": v["devproducts_for_sale"],
        "rg": v["roblox_genre"],
    })

tpl = (ROOT / "page_template.html").read_text(encoding="utf-8")
nav = "".join(f'<a href="#{k}">{html.escape(label)}</a>' for k, label, _ in sections)
body = "".join(f'<section id="{k}" class="sec">{h}</section>' for k, _, h in sections)
intro_html = md(intro)
out = (tpl.replace("{{NAV}}", nav).replace("{{INTRO}}", intro_html).replace("{{BODY}}", body)
          .replace("{{DATA}}", json.dumps(rows, ensure_ascii=False).replace("</", "<\\/")))
(ROOT / "market-report.html").write_text(out, encoding="utf-8")
print("REPORT.md", len(md_all.split()), "words; html", len(out), "bytes")

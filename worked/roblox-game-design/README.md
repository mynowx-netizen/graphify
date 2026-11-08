# Worked example: studying 120 YouTube videos on Roblox game design

A research corpus and playbook built by studying the most-viewed YouTube videos on six
topics, then turning the common techniques into steps for a Roblox game.

**Start with [`PLAYBOOK.md`](PLAYBOOK.md)**: the 12 best techniques, a build order with
"done when" checks, a genre loop map, and what to avoid.

```
roblox-game-design/
├── PLAYBOOK.md              — the result: best techniques + how to apply them in Roblox
├── videos.json              — the 120 videos (20 per topic) with title, channel, views, URL
├── research/                — one notes file per topic, every claim with its source link
│   ├── dev_design.md        — Roblox development & game design
│   ├── retention.md         — player retention, onboarding, the Home algorithm, live ops
│   ├── loops.md             — core loops, feedback loops, progression
│   ├── ui.md                — game UI/UX, HUDs, Roblox GUI scaling and styling
│   ├── monetization.md      — passes, products, payouts, F2P economy, dark patterns
│   └── fun.md               — game feel, psychology, social play, discovery
├── starter-kit/             — small Luau scripts for the techniques that need code
└── fetch_transcripts.py     — pull all 120 transcripts on your own computer for /graphify
```

## Step 1: the best GitHub repos for studying YouTube videos

Stars as of 2026-11-08, from GitHub search.

| Repo | Stars | What it's for |
|---|---|---|
| [yt-dlp/yt-dlp](https://github.com/yt-dlp/yt-dlp) | 206K | Downloads video, audio, subtitles and metadata; `ytsearchN:` searches YouTube. **Used here** to find and rank the 120 videos. |
| [openai/whisper](https://github.com/openai/whisper) | 112K | Speech-to-text for videos with no captions. |
| [ggml-org/whisper.cpp](https://github.com/ggml-org/whisper.cpp) | 55K | Whisper on a normal CPU or Apple Silicon, no Python needed. |
| [danielmiessler/Fabric](https://github.com/danielmiessler/Fabric) | 44.6K | `yt` transcript helper plus prompt "patterns" like `extract_wisdom` that turn a transcript into structured notes. |
| [SYSTRAN/faster-whisper](https://github.com/SYSTRAN/faster-whisper) | 26.6K | A faster Whisper; graphify uses it for video. |
| [m-bain/whisperX](https://github.com/m-bain/whisperX) | 25.1K | Whisper with word-level timestamps and speaker labels. |
| [jdepoix/youtube-transcript-api](https://github.com/jdepoix/youtube-transcript-api) | 8.6K | Pulls existing captions in seconds, no download, no API key. Used by `fetch_transcripts.py`. |
| [jimmc414/onefilellm](https://github.com/jimmc414/onefilellm) | 2.0K | Packs YouTube transcripts, repos and papers into one LLM-ready text file. |
| [zarazhangrui/youtube-digest](https://github.com/zarazhangrui/youtube-digest) | 1.7K | Transcripts to overviews and explanations. |
| [Dicklesworthstone/bulk_transcribe_youtube_videos_from_playlist](https://github.com/Dicklesworthstone/bulk_transcribe_youtube_videos_from_playlist) | 0.7K | A whole playlist to Whisper transcripts. |
| [kimtaeyoon83/mcp-server-youtube-transcript](https://github.com/kimtaeyoon83/mcp-server-youtube-transcript), [jkawamoto/mcp-youtube-transcript](https://github.com/jkawamoto/mcp-youtube-transcript) | 603 / 495 | MCP servers so Claude or Cursor can fetch transcripts directly. |
| [0xchamin/mcptube](https://github.com/0xchamin/mcptube) | 165 | Builds a persistent wiki from videos, including frame (vision) analysis. |
| [SweetYLHt/GameStudySkill](https://github.com/SweetYLHt/GameStudySkill) | 17 | Closest to this use case: game-dev tutorial videos to study notes (Godot/Unity/Unreal prompts; no Roblox prompt yet). |
| **graphify** (this repo) | — | `/graphify add <youtube-url>` downloads and transcribes a video (yt-dlp + faster-whisper) and maps many videos into one knowledge graph you can query, for questions like "which techniques show up across most videos?" |

**Recommended stack:** yt-dlp to find and rank videos → youtube-transcript-api for
captions (faster-whisper when there are none) → graphify to connect ideas across videos,
or Fabric `extract_wisdom` for per-video notes.

## Step 2: how the 120 videos were chosen

1. 61 YouTube searches with yt-dlp (5–23 per topic, Roblox-specific and general game
   design), 25–40 results each.
2. Dropped videos under ~3 minutes (except two 2-minute official Roblox Creators
   explainers), duplicates, let's-plays, music and off-topic hits.
3. Kept the 20 most-viewed videos per topic that actually teach the topic. Each video
   appears in only one topic. View counts are a snapshot from 2026-11-08.

## Step 3: what "studied" means here, and its limits

YouTube blocks transcript and video downloads from cloud servers ("Sign in to confirm
you're not a bot"), and this research ran on one. So each video was studied through
web search: transcript-based summaries, talk write-ups, the creator's own posts,
DevForum threads. Each video is tagged with how much of its content was found:

| Level | Meaning | Count |
|---|---|---|
| A | A detailed summary or transcript of this video was found | 25 |
| B | Partial: description, chapters, or a secondary write-up | 24 |
| C | Title and description only; techniques marked "inferred" | 71 |

The shared web-search budget ran out partway through, which is why C is high,
especially for small Roblox creator channels with few write-ups. To compensate, every
technique in the playbook was checked against Roblox's official Creator Docs and
DevForum announcements, fetched directly. The playbook only ranks a technique highly
when A/B videos *and* official guidance agree.

## Go deeper: full transcripts + a knowledge graph

On your own computer (home internet usually isn't blocked):

```bash
pip install youtube-transcript-api
python fetch_transcripts.py              # writes raw/<topic>/<video-id>.md

pip install graphifyy && graphify install
# then in Claude Code (or another supported assistant), from this folder:
/graphify ./raw
```

That turns the C-level videos into full transcripts and lets you ask the graph things
like "what do the monetization videos say about battle passes?" Videos without captions
can go through graphify's own pipeline: `uv tool install "graphifyy[video]"` then
`/graphify add <youtube-url>`.

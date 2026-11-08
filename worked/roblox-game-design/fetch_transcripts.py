#!/usr/bin/env python3
"""Fetch transcripts for the 120 videos in videos.json into raw/<topic>/<id>.md.

Run this on your own computer (home internet). YouTube blocks transcript requests
from most cloud/datacenter IPs, which is why the research in this folder was done
from search + secondary sources instead of full transcripts.

    pip install youtube-transcript-api
    python fetch_transcripts.py            # all topics
    python fetch_transcripts.py retention  # one topic

Then build a knowledge graph over the transcripts with graphify:

    pip install graphifyy && graphify install
    # in your AI coding assistant, from this folder:
    /graphify ./raw

If a video has no captions, use graphify's own video pipeline instead, which
downloads audio with yt-dlp and transcribes it locally with faster-whisper:

    uv tool install "graphifyy[video]"
    /graphify add https://www.youtube.com/watch?v=<id>
"""
import json
import sys
import time
from pathlib import Path

from youtube_transcript_api import YouTubeTranscriptApi

HERE = Path(__file__).resolve().parent
videos = json.loads((HERE / "videos.json").read_text(encoding="utf-8"))
topics = sys.argv[1:] or list(videos)
api = YouTubeTranscriptApi()

ok = fail = 0
for topic in topics:
    out_dir = HERE / "raw" / topic
    out_dir.mkdir(parents=True, exist_ok=True)
    for v in videos[topic]:
        dest = out_dir / f"{v['id']}.md"
        if dest.exists():
            continue
        try:
            segments = api.fetch(v["id"], languages=["en", "en-US", "en-GB"])
        except Exception as exc:  # no captions, private, region-locked, rate limited
            print(f"skip {v['id']} ({type(exc).__name__}): {v['title']}")
            fail += 1
            continue
        text = " ".join(s.text.replace("\n", " ") for s in segments)
        dest.write_text(
            f"# {v['title']}\n\n"
            f"- Channel: {v['channel']}\n- URL: {v['url']}\n- Topic: {topic}\n"
            f"- Views (at research time): {v['views']}\n\n## Transcript\n\n{text}\n",
            encoding="utf-8",
        )
        ok += 1
        print(f"ok   {v['id']}: {v['title']}")
        time.sleep(1.5)  # be polite; bursts get rate limited

print(f"\n{ok} fetched, {fail} skipped. Transcripts are in {HERE / 'raw'}")

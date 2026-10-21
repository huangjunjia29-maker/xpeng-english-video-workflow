# Migration and Restore Checklist

## Install from GitHub

Clone the repository, then copy `.agents/skills/xpeng-content-video-workflow` to one of these locations:

- Windows user scope: `%USERPROFILE%\.agents\skills\xpeng-content-video-workflow`
- Repository scope: `<project>\.agents\skills\xpeng-content-video-workflow`
- macOS/Linux user scope: `$HOME/.agents/skills/xpeng-content-video-workflow`

Restart Codex if the skill is not discovered, then test explicit invocation with `$xpeng-content-video-workflow`.

## Dependencies

Install FFmpeg and FFprobe and make them available on `PATH`. XLSX production also requires a compatible Python runtime with `openpyxl`, or another structured workbook library. Restore the user's latest approved TTS engine and voice descriptions separately; for local Qwen3-TTS VoiceDesign, verify model files, Python dependencies, and CUDA availability before promising generation. Use another service only when appropriate to the approved voice choice. Models, credentials, generated voice files, and device-specific paths are not stored in this repository.

## Data Not Stored in Git

This repository intentionally excludes source media, proprietary briefs, cloud credentials, local media libraries, generated videos, audio, spreadsheets, licensed fonts, and authorization records. Back them up separately. A fresh installation cannot reproduce missing source media or inaccessible cloud documents.

## Restore Test

1. Confirm the skill appears and reads a small authorized brief.
2. Confirm it asks for the daily copy count and directions rather than assuming 90, 100, or 102.
3. Confirm it extracts the day's hashtags and keeps qualifiers on AI or driving claims.
4. Approve one vertical or horizontal test render and verify 720P, 30fps, at least 12 seconds, audio, and full decode.
5. For narration, confirm scene timing follows actual audio and natural release. If subtitles are requested, confirm word-timed grammatical phrases on one fixed baseline; otherwise leave lower subtitles absent.
6. For titles, confirm annotation marks are not reproduced, single-line layout is preferred, and text remains inside the safe area.
7. Confirm each creation asks about video form, narration, and visible source labels unless already answered for this batch; English creator narration and source labels must not be automatic.
8. Confirm master count is recommended from the available material (normally 5-20), not fixed at nine; extra hooks may be written in the brief's style when supplied hooks are insufficient.
9. For expanded-video matching, verify every file's direction/content and preserve actual video order in the `Copy` sheet with a `视频文件名` column. Do not shuffle afterward.
10. For a story-led format, review one complete sample for hook/evidence/payoff and stable photo treatment before scaling; do not substitute image shuffling for different stories.
11. For a separate BGM pack, verify complete hash-deduplicated originals in one audio-only folder, with notes and attribution outside it. Confirm masters remain without BGM when requested.

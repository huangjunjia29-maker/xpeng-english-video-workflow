# XPENG Content and Video Workflow

This repository defines the portable XPENG overseas content workflow used for bilingual X copy, source-video and image-led edits, narrated B-roll, grammar-aware subtitles, and mobile-safe title overlays.

The installable Codex skill is located at `.agents/skills/xpeng-content-video-workflow`. Its references contain the current daily operating rules, narration mode, title/subtitle rules, and restore checklist.

The workflow is batch-oriented. Every asset is a task in a JSON manifest, and every task moves through explicit states:

```text
queued -> downloaded -> analyzed -> copy_review -> approved -> rendered -> qa_passed -> uploaded -> checked
```

The repository contains workflow logic, skills, and templates only. Source media, Feishu exports, credentials, local previews, voice files, spreadsheets, and final videos stay outside Git.

## Quick start

1. Install `.agents/skills/xpeng-content-video-workflow` at user or repository scope.
2. Give Codex the day's authorized brief and assets. Confirm communication directions, copy count, orientation, hashtags, and source boundaries.
3. For manifest-driven rendering, copy `examples/batch.json` and run `npm run validate -- examples/batch.json`.
4. Inspect media with `npm run inspect-video -- -InputPath <path> -OutputPath work/metadata.json`.
5. Render only after copy and video direction approval, then fully decode and visually inspect every deliverable.

The current sample is intentionally marked `copy_review` and does not render or upload anything. See the skill's `references/migration-checklist.md` for a new-device restore test.

## Batch contract

Each task should contain:

- stable `recordId` and source asset identifiers;
- source media path and optional clean/reference video;
- detected media metadata;
- English caption and preferred single-line on-screen copy, with legacy two-line support;
- review, render, QA, and distribution states;
- per-platform URLs and metrics after publishing.

The validator rejects duplicate IDs, missing required fields, unsupported states, overlong X copy, and render tasks that do not have approved copy.

## Safety boundaries

- Feishu pages are read-only until a dedicated test table and write scope are explicitly authorized.
- The workflow never claims fully autonomous driving, guaranteed safety, or absolute performance from a single clip.
- Human review remains mandatory for facts, English tone, driver-assistance wording, complete speech at every source-video cut, and final visual approval.
- The production source must be a clean master whenever burned-in Chinese text cannot be covered reliably by the selected title template.

## Planned adapters

The core manifest is provider-neutral. Feishu download/writeback and social upload adapters can be added without changing the validation or rendering contract. Keep secrets in environment variables or a secret manager; never commit them.

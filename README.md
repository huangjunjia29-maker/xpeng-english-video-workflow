# XPENG English Video Workflow

This repository defines a repeatable, review-gated workflow for turning authorized XPENG source videos into English social deliverables for X, TikTok, Instagram, and Facebook.

The workflow is batch-oriented. Every asset is a task in a JSON manifest, and every task moves through explicit states:

```text
queued -> downloaded -> analyzed -> copy_review -> approved -> rendered -> qa_passed -> uploaded -> checked
```

The repository contains workflow logic and templates only. Source media, Feishu exports, credentials, local previews, and final videos stay outside Git.

## Quick start

1. Copy `examples/batch.json` and replace the sample task with authorized media paths.
2. Run `npm run validate -- examples/batch.json`.
3. Inspect media with `npm run inspect-video -- -InputPath <path> -OutputPath work/metadata.json`.
4. After copy approval, use the title template in `config/title-template.json` with the render helper.

The current sample is intentionally marked `copy_review` and does not render or upload anything.

## Batch contract

Each task should contain:

- stable `recordId` and source asset identifiers;
- source media path and optional clean/reference video;
- detected media metadata;
- English caption and two-line on-screen copy;
- review, render, QA, and distribution states;
- per-platform URLs and metrics after publishing.

The validator rejects duplicate IDs, missing required fields, unsupported states, overlong X copy, and render tasks that do not have approved copy.

## Safety boundaries

- Feishu pages are read-only until a dedicated test table and write scope are explicitly authorized.
- The workflow never claims fully autonomous driving, guaranteed safety, or absolute performance from a single clip.
- Human review remains mandatory for facts, English tone, driver-assistance wording, and final visual approval.
- The production source must be a clean master whenever burned-in Chinese text cannot be covered reliably by the selected title template.

## Planned adapters

The core manifest is provider-neutral. Feishu download/writeback and social upload adapters can be added without changing the validation or rendering contract. Keep secrets in environment variables or a secret manager; never commit them.


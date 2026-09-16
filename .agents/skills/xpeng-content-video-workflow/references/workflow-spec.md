# XPENG Daily Workflow Specification

## Daily Intake

Confirm only information that has not already been decided: copy count, direction count and themes, hashtags, canvas, authorized source boundary, mandatory assets and order, total-coverage requirements, and prohibited media. The daily copy count is never assumed. Four communication directions are the default, with small adjustments when the brief needs them.

Before each creation, ask which video form to use (source clips, image-led edits, narrated B-roll, or an approved mixture), whether narration is wanted, and whether footage-source labels should appear on screen. Do not default to English creator narration or mandatory source labels. If narration is selected, confirm language and voice/style as needed. Reuse explicit answers for the current batch; historical batch choices do not replace this check. Keep an internal source map regardless of visible labels, and never present historical or concept footage as evidence of a current test.

Treat user instructions as operations and attached documents as facts. Extract the full document text, tables, hyperlinks, embedded images, and relevant metadata. For cloud pages, scroll through lazy-loaded content and recount assets.

## Communication Directions and Copy

Directions must differ in substance. Useful angles include a concrete user scene, the practical meaning of a technical metric, third-party or market evidence, and the larger company or product roadmap. Confirm directions before writing the complete batch.

When the user adopts a creator brief, make its selected angles, intended audience, evidence, and hooks the basis of both copy and video plans. Treat the creator perspective as a writing approach, not a compulsory voiceover format. Present directions as `Direction N: Title (Focus on ...)` followed by an actionable English paragraph about how a KOC can use the available evidence; add Chinese counterparts when requested.

Write bilingual KOC-style posts. Each post should have one main idea and an independent opening hook. Avoid official `we/our` voice, press-release cadence, unsupported superlatives, competitor attacks, and Chinese-to-English translation syntax.

For AI and driving claims, distinguish:

- capabilities shown or deployed in the authorized source;
- performance figures reported by XPENG;
- announced or planned vehicle rollout;
- long-term roadmap items such as Robotaxi, robotics, or flying cars.

Do not turn a demo into a universal safety claim. Preserve time, version, market, model, test condition, and source qualifiers where relevant.

Keep copy continuously numbered and follow the batch's requested order. Group by direction for review when requested; shuffle only when requested. A video-matched delivery always follows the actual agreed video-file order and must not be reshuffled afterward. Validate exact count, direction allocation, bilingual completeness, uniqueness, hashtags, qualifiers, and character limits. Unless a platform rule says otherwise, English copy including hashtags should remain within 200 characters. Export only one `Copy` sheet with `No.`, `English`, and `中文`; add `视频文件名` when matching posts to videos, keeping English in column B for easy pasting.

## Video Planning and Rendering

Recommend 5-20 master videos based on natural chapters, source quality, evidence coverage, and repetition. Do not fix the count at nine or require three per direction. Explain the proposed count and direction allocation for each batch, then confirm the plan unless already approved. Do not invent scenes, split incomplete speech, or pad footage to reach the range; explain when available material cannot support it.

Use the brief's hooks for approved top titles and openings. If a direction has more masters than supplied hooks, write additional hooks consistent with that direction, tone, evidence, and claim limits. Do not invent capabilities or promises. Record each master's direction, hook, sources, and optional narration in the working plan. See `master-expansion-and-copy-matching.md` for plugin expansion and ordered copy pairing.

Use at least five images per image-led video when enough authorized material exists. Keep each image visible for about three seconds; transitions are part of that time.

For source-video clips, inspect the actual audiovisual sequence around every proposed boundary. A cut is valid only when the current speaker has finished the sentence or self-contained thought, or when the source itself makes a clear editorial transition. Watch the speaker, listen through the line, and read any burned-in subtitle; scene detection, silence detection, transcripts, and contact sheets are supporting tools rather than sufficient evidence. Never divide the source into equal-duration sections merely to hit a target count. Allow unequal durations, fewer clips, or limited overlap when that preserves complete speech and coherent context.

If the user supplies clips they have already edited and asks only for vertical/horizontal conversion, resolution conversion, or another narrow transformation, preserve their edit decisions exactly. Do not change in/out points, internal timing, shot order, audio timing, subtitles, or content unless the user explicitly requests it. For horizontal media converted to vertical, keep the full horizontal frame centered at canvas width over a canvas-filling blurred background unless the user specifies another layout; native vertical media stays full-frame. Avoid empty side borders and stretching.

Output vertical `720x1280` or horizontal `1280x720`, 30fps, with normal pixel aspect ratio and at least 12 seconds per video. Preserve source audio and burned-in subtitles unless the user changes that requirement. Do not add music, titles, logos, or end cards without authorization.

## QA and Delivery

Check every final video through full decode and representative frames at the beginning, middle, end, transition points, user-reported timestamps, and source boundaries. For speech-led clips, listen across both sides of every boundary and confirm no spoken sentence, subtitle phrase, gesture, or response is cut off. For user-edited locked clips, compare input and output duration and audio timing to confirm the requested conversion did not alter the edit. Verify resolution, frame rate, duration, audio, subtitle baseline, title safe area, required asset order, batch coverage, black frames, stretching, clipping, jump frames, logos, and watermarks.

Deliver only final approved files. Store scripts, intermediate renders, original mechanical subtitles, contact sheets, and logs outside the delivery directory.

When matching expanded videos to copy, verify every video's direction, one-to-one file coverage, unique copy use, and Excel row order. The copy must fit that video's actual content as well as its direction; it is not necessarily a narration transcript. Deliver a short verification summary and stop before publishing unless separately authorized.

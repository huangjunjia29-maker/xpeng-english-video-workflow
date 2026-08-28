# Title and Subtitle Rules

## Top Titles

- Treat circles, arrows, boxes, and other markup in a user's screenshot as positional annotation unless the user explicitly asks to reproduce them.
- Put the title in the upper blurred or blank area, away from the main footage and burned-in subtitles.
- Prefer one line. Reduce font size according to measured text width so the longest title stays inside the horizontal safe area. Use two lines only when a readable single line is impossible or the user requests it.
- A batch may vary typography, weight, color, label treatment, and alignment while keeping a coherent visual family. Use supplied font examples as style references, not as text content.
- Avoid adding decorative red frames, lines, blocks, opaque cards, or other UI elements not requested by the user.
- Keep title position stable, readable on mobile, and free of clipping. Render representative frames from every video before finalizing.

## Narration Subtitles

- Build subtitles from the actual voice's word-level timing.
- Group words by English grammar and natural speech pauses, not by a fixed count. Keep noun phrases, phrasal verbs, names such as `VLA 2.0`, and clause boundaries intact.
- Prefer short one-line cues. Two or three words are common, but allow four or five short words when splitting would create fragments such as `gives / the other car / room`.
- Use punctuation to expose sentence and clause boundaries. Never join the end of one sentence to the beginning of the next cue.
- Keep all cues on one fixed baseline. For vertical `720x1280`, the established starting style is centered Arial around 46px, white text, subtle dark outline or shadow, and a fixed absolute position. Adjust only for the current safe area.
- Check fast function words, sentence openings, transitions, and the final cue against the audio. Fix local word timing or cue grouping instead of masking errors with one global offset.

## QA

Inspect the longest title and subtitle cue, title visibility on light and dark frames, subtitle clipping, baseline consistency, sentence boundaries, and audio synchronization. Fully decode every output after burning in text.

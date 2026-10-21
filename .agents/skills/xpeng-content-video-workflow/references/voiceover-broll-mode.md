# Optional Voiceover and B-roll Mode

Use the narration sections when the user requests narration, talking-head-style audio, or B-roll storytelling. Use the music section independently when a BGM selection or pack is requested.

Ask about video form, narration, and visible footage-source labels before each creation unless already answered for this batch. English creator narration is one option, not the default video form. Confirm narration language, voice, and treatment of source speech/music before generating audio. When requested, send audio for approval before rendering video.

## Story and Voice

Write natural speech in the approved language with a human reaction, not a news bulletin. Keep each narrated master's script unique across a batch. Use the same factual backbone when needed, but vary the opening, phrasing, humor, and conclusion. Use the brief's hooks first and extend them within the same direction and factual scope when there are more masters than hooks.

Prefer the user's latest approved voice presets and a short audition when changing voices. Retain all accepted alternatives rather than forcing one provider, gender, or legacy TTS default; check local availability before promising a voice.

When the latest accepted presets use local Qwen3-TTS VoiceDesign, check the installed model and CUDA runtime and retain the accepted voice descriptions. Do not silently replace them with an older provider default. A useful creator-style direction is conversational, lightly amused or impressed, with varied pacing and realistic pauses, avoiding trailer or commercial-announcer delivery. The voice remains a daily choice, not a fixed male/female preset.

Generate narration in coherent scene or phrase units. Measure each approved waveform and let its visual scene last through the speech plus a natural release; do not estimate timing from character count or force every scene into a fixed image slot. Obtain word-level timing only when subtitles or word-level synchronization are needed. Narration does not automatically authorize lower subtitles. Avoid obvious speed stretching, pitch artifacts, clipping, silence tails, or abrupt loudness changes.

## Audio and Visual Mapping

Map each narration segment to one authorized material class. Robot narration uses robot footage, sales narration uses sales material, and VLA narration uses VLA footage. Do not let the previous visual category spill into a new spoken section.

Visible source labels follow the batch's explicit choice. Internal mapping must still distinguish current evidence, historical footage, and illustrative material. Omitting labels does not permit misleading claims about footage provenance or demonstrated capability.

Remove original music when the user requests voiceover-only audio. Preserve original ambience only when explicitly desired and mix it below narration. Do not add watermarks.

## Batch Rules

Approve one complete sample before batch production when the format is new. Every independently authored narrated master must have distinct narration and audio. Check audio fingerprints or scripts for accidental reuse. If the user later expands approved masters with a plugin, inherited narration is expected unless new narration per variant was requested; do not mistake those variants for newly authored masters.

Use [title-and-subtitle.md](title-and-subtitle.md) for subtitle grouping, baseline, and title overlay rules.

## BGM Selection and Separate Delivery

Choose music for the actual content and emotional progression, not to meet a track count. Examples include light playful grooves for a human-scale challenge, sporty rhythm for action, warm unobtrusive music for cabin/social scenes, and confident restrained music for a partnership reveal. Avoid unrelated sad, ominous, or oversized trailer tracks unless the story calls for them. Prefer instrumentals under speech; flag vocal tracks separately. Metadata-based selection is not a claim of full listening review.

Confirm whether music belongs in the master or only in a separate pack. A no-BGM narrated master still contains its approved narration. When separate originals are requested, copy complete original audio files into one flat audio-only folder for batch import, without trimming, re-encoding, or retiming. Deduplicate by content hash, verify copied hashes and full decode, and keep selection notes, provenance and attribution requirements beside the folder. Provide a direct folder link; do not build a listening interface unless requested. Supply as many suitable distinct tracks as available, reporting the actual count rather than padding with poor matches. Downloaded availability does not establish publication rights.

For an approved mixed sample, normalize narration and music separately, duck music under speech, use gentle fades and a limiter, and review audibility against the actual voice. As a starting point only, a conversational mix may use narration near -16 LUFS and music near -22 LUFS with light ducking (threshold 0.06, ratio 2, attack 15 ms, release 220 ms). These values came from one reviewed sample and are not universal targets. Adjust to the user's listening feedback; meters alone cannot certify a pleasing balance. Keep an approved no-BGM version available when the batch will receive music later.

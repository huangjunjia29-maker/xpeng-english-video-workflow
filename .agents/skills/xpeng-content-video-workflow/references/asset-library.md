# Asset Intake and Reuse

The user has authorized ongoing archiving of every new asset supplied to this workflow. The current library is `D:/视频素材库`. Archive during intake and verify completion before final delivery; do not wait for another reminder. On another device, confirm the replacement root if this path is unavailable.

## Archive

- Include user-supplied images, videos, audio, source briefs, explicitly supplied folders, and media from accessible supplied cloud documents. Extract DOCX embedded media without recompression. Preserve document and link provenance.
- Copy originals; do not move/delete sources, re-encode them, overwrite a different file, or reorganize existing library files without a separate request. Compare file bytes using SHA-256 across the library, not names alone. Identical content gets one existing physical path; same-name different-content files get distinct names.
- Follow the library's existing content taxonomy: media type, main topic, product/subtopic, then batch/date. Topics include intelligent driving (VLA/NGP/parking), flying cars, robots, and vehicle models such as G6/G9/P7/P7+/L03/X9. Company results, overseas sales, and market events use their own suitable topic folders. Use cross-topic tags instead of duplicate files.
- Preserve already archived assets in their current directories and make them searchable in the index. Put briefs in a document area and layout/font/UI examples in a clearly marked production-reference area; never mix these references with usable footage. Keep user exclusions and context restrictions in the index.
- Update the existing `素材索引.csv` without dropping old rows/fields. Record physical path, SHA-256, original source, topic, model, market/event, media metadata when available, and reuse constraints. Multiple source locations may refer to one physical file.
- For a supplied link whose original cannot be downloaded, save a source-link record and the actual failure/pending status. A saved link is not an archived video. Do not bypass access restrictions or substitute an unrelated asset.
- Report new unique files, reused duplicates, verification failures, and missing/pending sources separately. Verify copied hashes and index paths. Keep an archive manifest so an interrupted operation can resume without duplicate copies.

## Reuse

Search the index and relevant topic folders together. Choose materials matching the current brief's topic, market, model/version, date, and evidence requirements. Archiving is not permission to silently insert historical or unrelated library material into a new batch: follow the current material scope. Preserve original attribution/rights status, and distinguish historical or illustrative footage from current capability evidence. Whether to show source labels remains the separately confirmed creative choice for each batch.

Only workflow instructions and reusable code belong in GitHub. Do not upload the media library, private briefs, archive indexes containing private paths or signed links, or generated deliverables when syncing the workflow.

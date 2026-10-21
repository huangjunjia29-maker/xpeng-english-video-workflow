# Asset Intake and Reuse

The user has authorized ongoing archiving of every new asset supplied to this workflow. The current library is `D:/视频素材库`. Archive during intake and verify completion before final delivery; do not wait for another reminder. On another device, confirm the replacement root if this path is unavailable.

## Archive

- Include user-supplied images, videos, audio, source briefs, explicitly supplied folders, and media from accessible supplied cloud documents. Extract DOCX embedded media without recompression. Preserve document and link provenance.
- Copy originals; do not move/delete sources, re-encode them, overwrite a different file, or reorganize existing library files without a separate request. Compare file bytes using SHA-256 across the library, not names alone. Identical content gets one existing physical path; same-name different-content files get distinct names.
- Follow the current topic-first taxonomy in the library's root README: `01_车型`, `02_国家地区` (shortcuts), `03_机器人`, `04_飞行汽车`, `05_VLA与智驾`, `06_品牌事件`, `90_文档与参考`, `91_已完成作品`, and `99_管理记录`. Put images/videos inside the relevant model or topic/event, not in separate top-level video/image trees. Countries and cross-model associations use shortcuts or index tags, not duplicate media. Unknown countries remain unconfirmed; do not infer them from language, clothing, or brand nationality.
- Preserve already archived assets in their current directories and make them searchable in the index. Put briefs in a document area and layout/font/UI examples in a clearly marked production-reference area; never mix these references with usable footage. Keep user exclusions and context restrictions in the index.
- Update the existing `素材索引.csv` without dropping old rows/fields. Record physical path, SHA-256, original source, topic, model, market/event, media metadata when available, and reuse constraints. Multiple source locations may refer to one physical file.
- For a supplied link whose original cannot be downloaded, save a source-link record and the actual failure/pending status. A saved link is not an archived video. Do not bypass access restrictions or substitute an unrelated asset.
- Report new unique files, reused duplicates, verification failures, and missing/pending sources separately. Verify copied hashes and index paths. Keep an archive manifest so an interrupted operation can resume without duplicate copies.

## Reuse

Search the index and relevant topic folders together. Choose materials matching the current brief's topic, market, model/version, date, and evidence requirements. Archiving is not permission to silently insert historical or unrelated library material into a new batch: follow the current material scope. Preserve original attribution/rights status, and distinguish historical or illustrative footage from current capability evidence. Whether to show source labels remains the separately confirmed creative choice for each batch.

Only workflow instructions and reusable code belong in GitHub. Do not upload the media library, private briefs, archive indexes containing private paths or signed links, or generated deliverables when syncing the workflow.

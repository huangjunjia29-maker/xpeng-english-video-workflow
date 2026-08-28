import fs from "node:fs/promises";
import process from "node:process";

const manifestPath = process.argv[2] ?? "examples/batch.json";
const manifest = JSON.parse(await fs.readFile(manifestPath, "utf8"));
const errors = [];
const allowedStatuses = new Set(["queued", "downloaded", "analyzed", "copy_review", "approved", "rendered", "qa_passed", "uploaded", "checked"]);
const allowedReview = new Set(["pending", "approved", "revision_required"]);
const allowedRender = new Set(["not_started", "rendering", "rendered", "failed"]);
const allowedQa = new Set(["pending", "pass", "fail"]);
const ids = new Set();

if (!manifest.batchId) errors.push("batchId is required");
if (manifest.brand !== "XPENG") errors.push("brand must be XPENG");
if (!Array.isArray(manifest.tasks) || manifest.tasks.length === 0) errors.push("tasks must contain at least one item");

for (const [index, task] of (manifest.tasks ?? []).entries()) {
  const prefix = `tasks[${index}]`;
  for (const field of ["recordId", "sourceAssetId", "model", "sourcePath", "status", "englishCaption"]) {
    if (!task[field]) errors.push(`${prefix}.${field} is required`);
  }
  if (task.recordId && ids.has(task.recordId)) errors.push(`${prefix}.recordId is duplicated: ${task.recordId}`);
  if (task.recordId) ids.add(task.recordId);
  if (task.status && !allowedStatuses.has(task.status)) errors.push(`${prefix}.status is invalid: ${task.status}`);
  if (task.copyReview && !allowedReview.has(task.copyReview)) errors.push(`${prefix}.copyReview is invalid: ${task.copyReview}`);
  if (task.renderStatus && !allowedRender.has(task.renderStatus)) errors.push(`${prefix}.renderStatus is invalid: ${task.renderStatus}`);
  if (task.qaStatus && !allowedQa.has(task.qaStatus)) errors.push(`${prefix}.qaStatus is invalid: ${task.qaStatus}`);
  if (typeof task.englishCaption === "string" && task.englishCaption.length > 200) errors.push(`${prefix}.englishCaption exceeds 200 characters (${task.englishCaption.length})`);
  const hasSingleLine = Boolean(task.onScreen?.headline);
  const hasTwoLines = Boolean(task.onScreen?.line1 && task.onScreen?.line2);
  if (!hasSingleLine && !hasTwoLines) errors.push(`${prefix}.onScreen requires headline, or both line1 and line2`);
  if (task.status === "approved" && task.copyReview !== "approved") errors.push(`${prefix} cannot be approved while copyReview is not approved`);
  if (["rendered", "qa_passed", "uploaded", "checked"].includes(task.status) && task.renderStatus !== "rendered") errors.push(`${prefix} is beyond rendering but renderStatus is not rendered`);
}

if (errors.length) {
  console.error(`Batch validation failed for ${manifestPath}`);
  for (const error of errors) console.error(`- ${error}`);
  process.exit(1);
}

console.log(`Batch validation passed: ${manifest.tasks.length} task(s), ${manifest.platforms?.length ?? 0} platform(s).`);

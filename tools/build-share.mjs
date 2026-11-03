#!/usr/bin/env node
/*
  Builds a shareable copy of the Pages of Eden design books.

  Every HTML in the output is fully self-contained: the shared stylesheet is
  inlined and every picture the book can show (including Name1, Name2 …
  shortlist variants) is embedded, so a single file still works on any
  machine. The design notes (markdown) are copied alongside.

  Usage (from the repo root):
    node tools/build-share.mjs             -> dist/Pages of Eden (Share)/ + .zip
    node tools/build-share.mjs --desktop   -> also copies both to your Desktop
*/
import fs from "node:fs";
import os from "node:os";
import path from "node:path";
import { execFileSync } from "node:child_process";
import { fileURLToPath } from "node:url";

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), "..");
const src = path.join(root, "design", "Pages of Eden");
const name = "Pages of Eden (Share)";
const out = path.join(root, "dist", name);
const zip = path.join(root, "dist", `${name}.zip`);

const BOOKS = {
  "Visions of Eden.html": ["Visions", "Warlords", "Flags", "Logos"],
  "Warlords of Eden.html": ["Warlords", "Buildings", "Flags", "Logos", "Wastelanders", "Hunters", "Militia", "Ashen", "Droids"],
  "Resources of Eden.html": ["Resources", "Produce", "Tools", "Weapons", "Armour", "Warlords"],
  "Maps of Eden.html": ["Maps"]
};
const MIME = { ".jpg": "image/jpeg", ".jpeg": "image/jpeg", ".png": "image/png", ".webp": "image/webp" };
const BAKED = '<script type="application/json" id="codex-baked">';
const CSS_LINK = '<link rel="stylesheet" href="eden-codex.css">';

function walk(dir) {
  if (!fs.existsSync(dir)) return [];
  return fs.readdirSync(dir, { withFileTypes: true }).flatMap(e => {
    const p = path.join(dir, e.name);
    return e.isDirectory() ? walk(p) : [p];
  });
}
const images = walk(path.join(src, "Images"))
  .filter(p => MIME[path.extname(p).toLowerCase()])
  .map(p => ({ abs: p, rel: path.relative(src, p).split(path.sep).join("/") }));

fs.rmSync(out, { recursive: true, force: true });
fs.mkdirSync(out, { recursive: true });
const css = fs.readFileSync(path.join(src, "eden-codex.css"), "utf8");

for (const [file, folders] of Object.entries(BOOKS)) {
  let html = fs.readFileSync(path.join(src, file), "utf8");
  if (!html.includes(CSS_LINK) || !html.includes(BAKED)) throw new Error(`${file}: expected stylesheet link and baked-data slot`);
  const embedded = {};
  let bytes = 0;
  for (const img of images) {
    if (!folders.some(f => img.rel.startsWith(`Images/${f}/`))) continue;
    const data = fs.readFileSync(img.abs);
    bytes += data.length;
    embedded[img.rel] = `data:${MIME[path.extname(img.abs).toLowerCase()]};base64,${data.toString("base64")}`;
  }
  html = html.replace(CSS_LINK, () => `<style>\n${css}\n</style>`);
  html = html.replace(BAKED, () => `<script>window.EDEN_IMAGES = ${JSON.stringify(embedded)};</script>\n${BAKED}`);
  fs.writeFileSync(path.join(out, file), html, "utf8");
  console.log(`${file.padEnd(24)} ${String(Object.keys(embedded).length).padStart(3)} pictures  ${(bytes / 1048576).toFixed(1)} MB embedded`);
}

const notes = path.join(out, "Design Notes");
fs.mkdirSync(notes, { recursive: true });
for (const f of fs.readdirSync(path.join(src, "Data"))) fs.copyFileSync(path.join(src, "Data", f), path.join(notes, f));
for (const q of ["Scope Questionnaire.md", "Warlord Character Questionnaire.md"]) {
  const p = path.join(root, "design", q);
  if (fs.existsSync(p)) fs.copyFileSync(p, path.join(notes, q));
}
const archive = path.join(root, "design", "Reference", "Arms of Eden (Archive).html");
if (fs.existsSync(archive)) {
  fs.mkdirSync(path.join(out, "Reference"), { recursive: true });
  fs.copyFileSync(archive, path.join(out, "Reference", path.basename(archive)));
}

fs.rmSync(zip, { force: true });
if (process.platform === "win32") {
  execFileSync("powershell", ["-NoProfile", "-Command", `Compress-Archive -LiteralPath '${out.replace(/'/g, "''")}' -DestinationPath '${zip.replace(/'/g, "''")}'`], { stdio: "inherit" });
} else {
  execFileSync("zip", ["-rq", zip, name], { cwd: path.dirname(out), stdio: "inherit" });
}
console.log(`\nShare folder: ${out}\nZip:          ${zip}`);

if (process.argv.includes("--desktop")) {
  const desktop = path.join(os.homedir(), "Desktop");
  const dOut = path.join(desktop, name);
  try { fs.rmSync(dOut, { recursive: true, force: true }); }
  catch (e) { console.log("Desktop copy is open in another window — overwriting files in place."); }
  fs.cpSync(out, dOut, { recursive: true, force: true });
  fs.copyFileSync(zip, path.join(desktop, `${name}.zip`));
  console.log(`Copied to Desktop: ${dOut} (+ .zip)`);
}

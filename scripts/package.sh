#!/usr/bin/env bash
# Zip each skill (SKILL.md plus references/) into dist/<skill-name>.zip.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILLS_DIR="$ROOT/.github/skills"
DIST_DIR="$ROOT/dist"

command -v zip >/dev/null || { echo "error: 'zip' is not installed" >&2; exit 1; }

rm -rf "$DIST_DIR"
mkdir -p "$DIST_DIR"

count=0
for dir in "$SKILLS_DIR"/*/; do
  name="$(basename "$dir")"
  if [[ ! -f "$dir/SKILL.md" ]]; then
    echo "skip: $name (no SKILL.md)" >&2
    continue
  fi
  files=("$name/SKILL.md")
  [[ -d "$dir/references" ]] && files+=("$name/references")
  (cd "$SKILLS_DIR" && zip -qr "$DIST_DIR/$name.zip" "${files[@]}" -x '*.DS_Store')
  echo "built: dist/$name.zip"
  count=$((count + 1))
done

echo "$count skill(s) packaged into $DIST_DIR"

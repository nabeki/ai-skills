#!/usr/bin/env bash
set -euo pipefail

SOURCE_REPO="https://github.com/dvcrn/openclaw-skills-marketplace.git"
SOURCE_REF="67b1c2373b5ad4a345051bc48b47ca2a5d8f933c"
TMP_DIR="/tmp/openclaw-skills-marketplace-sync"

rm -rf "$TMP_DIR"
git clone --depth 1 "$SOURCE_REPO" "$TMP_DIR"
cd "$TMP_DIR"
git fetch --depth 1 origin "$SOURCE_REF"
git checkout "$SOURCE_REF"
cd - >/dev/null

copy_skill() {
  local src="$1"
  local name="$2"
  rm -rf "$name"
  mkdir -p "$name"
  cp -R "$TMP_DIR/$src/." "$name/"
  echo "synced: $name"
}

copy_skill "plugins/alexandrali1989-cell--content-writer/skills/content-writer" "content-writer"
copy_skill "plugins/yang1002378395-cmyk--content-creator-cn/skills/content-creator-cn" "content-creator-cn"
copy_skill "plugins/antonia-sz--content-agency/skills/content-agency" "content-agency"
copy_skill "plugins/judefluen-coder--content-hunter/skills/content-hunter" "content-hunter"
copy_skill "plugins/lanyasheng--content-deai-engine/skills/content-deai-engine" "content-deai-engine"
copy_skill "plugins/52yuanchangxing--content-repurpose-studio/skills/content-repurpose-studio" "content-repurpose-studio"
copy_skill "plugins/cwyhkyochen-a11y--content-ops/skills/content-ops" "content-ops"
copy_skill "plugins/yang1002378395-cmyk--content-analytics/skills/content-analytics" "content-analytics"
copy_skill "plugins/dizhu--content-analyzer/skills/content-analyzer" "content-analyzer"
copy_skill "plugins/liujuntao123--content-goldmine/skills/content-goldmine" "content-goldmine"

rm -rf "$TMP_DIR"

echo "All skills synced."

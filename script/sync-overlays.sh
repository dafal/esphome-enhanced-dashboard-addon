#!/usr/bin/env bash
# Sync overlay files from the main enhanced-dashboard repo into this add-on repo.
# Run this whenever the dashboard code is updated upstream.
#
# Usage:
#   ./script/sync-overlays.sh               # sync from ../esphome-enhanced-dashboard
#   MAIN_REPO=/path/to/repo ./script/sync-overlays.sh

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ADDON_REPO="$(cd "$SCRIPT_DIR/.." && pwd)"
MAIN_REPO="${MAIN_REPO:-$ADDON_REPO/../esphome-enhanced-dashboard}"

if [[ ! -d "$MAIN_REPO/overrides" ]]; then
  echo "ERROR: main repo not found at $MAIN_REPO" >&2
  echo "Set MAIN_REPO=/path/to/esphome-enhanced-dashboard and retry." >&2
  exit 1
fi

DEST="$ADDON_REPO/esphome-enhanced-dashboard/overlays"
echo "Syncing overlays from $MAIN_REPO/overrides -> $DEST"

mkdir -p "$DEST/status" "$DEST/templates"
cp "$MAIN_REPO/overrides/const.py"        "$DEST/const.py"
cp "$MAIN_REPO/overrides/core.py"         "$DEST/core.py"
cp "$MAIN_REPO/overrides/models.py"       "$DEST/models.py"
cp "$MAIN_REPO/overrides/web_server.py"   "$DEST/web_server.py"
cp "$MAIN_REPO/overrides/status/ping.py"  "$DEST/status/ping.py"
cp "$MAIN_REPO/overrides/templates/index.template.html" "$DEST/templates/index.template.html"

echo "Done. Remember to bump the version in esphome-enhanced-dashboard/config.yaml"
echo "and append to esphome-enhanced-dashboard/CHANGELOG.md before committing."

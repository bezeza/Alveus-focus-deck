#!/usr/bin/env bash
# SPDX-License-Identifier: GPL-3.0-only
set -euo pipefail

REPO_ROOT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
PACKAGE_DIR="$REPO_ROOT/package"
PACKAGE_ID="alveus-focus-deck"
PACKAGE_TYPE="KWin/WindowSwitcher"

if ! command -v kpackagetool6 >/dev/null 2>&1; then
    printf 'Error: kpackagetool6 was not found. Install the KDE KPackage tools first.\n' >&2
    exit 1
fi

if [[ ! -f "$PACKAGE_DIR/metadata.json" ]]; then
    printf 'Error: KWin package metadata not found at %s\n' "$PACKAGE_DIR/metadata.json" >&2
    exit 1
fi

installed_packages="$(kpackagetool6 --type "$PACKAGE_TYPE" --list)"
if grep -Fxq "$PACKAGE_ID" <<< "$installed_packages"; then
    kpackagetool6 --type "$PACKAGE_TYPE" --upgrade "$PACKAGE_DIR"
else
    kpackagetool6 --type "$PACKAGE_TYPE" --install "$PACKAGE_DIR"
fi

printf '\nAlveus Focus Deck is installed.\n'
printf 'Select it in System Settings → Window Management → Task Switcher.\n'
printf 'KWin settings and shortcuts were not changed.\n'

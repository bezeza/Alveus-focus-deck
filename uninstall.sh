#!/usr/bin/env bash
# SPDX-License-Identifier: GPL-3.0-only
set -euo pipefail

PACKAGE_ID="alveus-focus-deck"
PACKAGE_TYPE="KWin/WindowSwitcher"

if ! command -v kpackagetool6 >/dev/null 2>&1; then
    printf 'Error: kpackagetool6 was not found.\n' >&2
    exit 1
fi

installed_packages="$(kpackagetool6 --type "$PACKAGE_TYPE" --list)"
if ! grep -Fxq "$PACKAGE_ID" <<< "$installed_packages"; then
    printf 'Alveus Focus Deck is not installed.\n'
    exit 0
fi

kpackagetool6 --type "$PACKAGE_TYPE" --remove "$PACKAGE_ID"
printf 'Alveus Focus Deck was removed.\n'
printf 'If it was selected, choose another layout in Task Switcher settings.\n'

# Development log

This log records implementation and verification separately. CI checks are not described as live Plasma tests.

## 2026-11-16 — Standalone project foundation

- Created the standalone public repository `bezeza/Alveus-focus-deck`.
- Transferred the initial KWin WindowSwitcher QML implementation from the draft work in [Alveus PR #44](https://github.com/bezeza/Alveus/pull/44), which was closed without merging so the theme could have its own repository.
- Moved the KPackage to the repository-root `package/` directory.
- Aligned KPackage metadata with the repository's existing GPL-3.0 license.
- Added installation and uninstallation scripts, package structure tests, CI checks, English and Ukrainian READMEs, design notes, roadmap, changelog, contribution guide, agent instructions, and an illustrative concept image.
- Runtime validation on Fedora KDE / Plasma 6.8.x has not yet been performed.

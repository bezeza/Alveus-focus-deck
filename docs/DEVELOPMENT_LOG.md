# Development log

This log records implementation and verification separately. CI checks are not described as live Plasma tests.

## 2026-11-16 — Standalone project foundation

- Created the standalone public repository `bezeza/Alveus-focus-deck`.
- Transferred the initial KWin WindowSwitcher QML implementation from the draft work in [Alveus PR #44](https://github.com/bezeza/Alveus/pull/44), which was closed without merging so the theme could have its own repository.
- Moved the KPackage to the repository-root `package/` directory.
- Aligned KPackage metadata with the repository's existing GPL-3.0 license.
- Added installation and uninstallation scripts, package structure tests, CI checks, English and Ukrainian READMEs, design notes, roadmap, changelog, contribution guide, agent instructions, and an illustrative concept image.
- Runtime validation on Fedora KDE / Plasma 6.8.x has not yet been performed.

## 2026-11-16 — First Fedora runtime feedback

- User environment: Fedora 44, KDE Plasma 6.8.2, KWin 6.8.2, Wayland, two displays at 100% scale.
- Alveus Focus Deck installs and opens as the selected task-switcher layout.
- The built-in Large Thumbnail Grid displays live previews on the same system, confirming that KWin's thumbnail rendering works in the test session.
- Alveus Focus Deck opened without visible thumbnails. This isolates the first reported issue to the custom package rather than a general compositor/driver failure.
- Updated the custom delegates to receive the KWin `windowId` role as a required delegate property, following the KWin switcher API pattern. The grid wrapper now explicitly forwards that property to its card.
- This is a targeted candidate fix. It is not marked verified until the user repeats the runtime test.

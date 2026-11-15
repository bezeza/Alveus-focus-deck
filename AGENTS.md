# Agent instructions

## Project identity

Alveus Focus Deck is a standalone **KWin WindowSwitcher theme** for KDE Plasma 6. It is not the Alveus desktop-fence application and must not be merged back into that product.

## Hard scope boundaries

- Modify only the task-switcher theme, its tests, packaging, CI, and documentation.
- Do not add a separate application, dock, app launcher, pinned apps, app categories, app search, or app-specific actions.
- Do not add a KWin script, daemon, polling loop, timer, DBus integration, or external process.
- Do not take ownership of virtual-desktop navigation or window activation; KWin remains authoritative.
- Do not change the user's KWin settings or shortcuts from install/uninstall scripts.

## Architecture

- KPackage metadata: `package/metadata.json`.
- KWin switcher entry point: `package/contents/ui/main.qml`.
- Reusable window card: `package/contents/ui/WindowCard.qml`.
- Keyboard hint: `package/contents/ui/ShortcutHint.qml`.
- Package install/remove: `install.sh`, `uninstall.sh`.

The current design uses a horizontal PathView for 1–6 windows and a GridView for 7+ windows. Both are loaded only while the switcher is visible.

## Required workflow

1. Read the relevant QML and docs before changing behavior.
2. Keep changes focused and preserve the current visual direction.
3. Run `python3 tests/check_package.py`.
4. Run `bash -n install.sh uninstall.sh` and ShellCheck.
5. Parse all QML files with `qmlformat`.
6. Update `docs/DEVELOPMENT_LOG.md` for implementation changes.
7. Update `CHANGELOG.md` for user-visible changes.
8. Record manual Plasma tests separately from CI checks.
9. Never claim live KWin compatibility or performance without a real-session test and recorded environment.

## Safety

- Never run install/uninstall scripts against a user's desktop as part of automated tests.
- Use disposable test environments for runtime testing.
- Do not collect window titles, screenshots, or other session data automatically.
- Keep the project telemetry-free.

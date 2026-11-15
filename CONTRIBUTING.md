# Contributing

Thanks for taking an interest in Alveus Focus Deck.

## Scope

This repository contains a **KWin WindowSwitcher theme**. Keep changes focused on the visual task-switcher package and its packaging, tests, and documentation.

Do not turn the project into a separate app launcher, dock, KWin script, background daemon, desktop manager, or app categorizer. KWin owns the window list and activation lifecycle.

## Before opening an issue

- Check the [roadmap](ROADMAP.md) and existing issues.
- For a bug, include KDE Plasma, KWin, Qt, and distribution versions.
- Include the number of open windows, switcher scope (current desktop/all desktops), monitor count, scaling, and steps to reproduce.
- Do not attach private document contents or other sensitive window data.

## Development

The QML package is in `package/`.

Useful checks:

```bash
python3 -m json.tool package/metadata.json >/dev/null
python3 tests/check_package.py
bash -n install.sh uninstall.sh
shellcheck --severity=error install.sh uninstall.sh
qmlformat package/contents/ui/main.qml >/dev/null
qmlformat package/contents/ui/WindowCard.qml >/dev/null
qmlformat package/contents/ui/ShortcutHint.qml >/dev/null
```

The QML parser checks syntax; it does not provide a running KWin environment. Test changes in a real Plasma session before claiming runtime compatibility.

## Pull requests

- Keep one focused change per PR.
- Explain the user-visible behavior and why the change is needed.
- Add or update tests for structural or packaging changes.
- Update `CHANGELOG.md` for user-visible changes.
- Update `docs/DEVELOPMENT_LOG.md` for implementation changes.
- Record manual checks and explicitly list anything not tested.
- Do not claim performance improvements without measurements.
- Preserve the GPL-3.0-only licensing headers.

## Design principles

- Keep the switcher calm, compact, and legible.
- Prefer native KWin behavior and APIs over custom logic.
- Avoid polling, timers, external processes, DBus calls, and unnecessary thumbnail delegates.
- Keep keyboard navigation predictable.

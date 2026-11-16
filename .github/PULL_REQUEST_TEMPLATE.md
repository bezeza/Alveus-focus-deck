## Summary

<!-- What changed and why? -->

## Scope check

- [ ] This remains a KWin WindowSwitcher theme, not a separate app or dock.
- [ ] No app launcher, app categories, background service, KWin script, or DBus integration was added.
- [ ] KWin remains responsible for window cycling and activation.

## Validation

- [ ] `python3 tests/check_package.py`
- [ ] `bash -n install.sh uninstall.sh`
- [ ] ShellCheck
- [ ] QML parsing with `qmlformat`
- [ ] Live KDE Plasma test (environment and results below)

## Manual test environment

<!-- Plasma/KWin/Qt versions, Wayland/X11, GPU, scaling, monitor count -->

## Not tested / known limitations

<!-- Be explicit. A green CI run is not a live KWin test. -->

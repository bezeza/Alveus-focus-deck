# Manual testing plan

CI validates package structure, QML parsing, and shell syntax. It does not run a live KWin session. Complete this checklist on a disposable or backed-up KDE Plasma 6 desktop before calling a release stable.

## Environment record

Record:

- Distribution and version.
- KDE Plasma version.
- KWin version.
- Qt version.
- GPU and driver.
- Display resolution, monitor count, and scaling factor.
- Whether the session is Wayland or X11.

## Window-count matrix

- [ ] 1 window.
- [ ] 2 windows.
- [ ] 5 windows.
- [ ] 6 windows.
- [ ] 7 windows (carousel-to-grid boundary).
- [ ] 10 windows.
- [ ] 20+ windows.

For each count, check that the selected item matches KWin's native selection and the overlay opens/closes cleanly.

## Window types and states

- [ ] PDF viewer with a long file name.
- [ ] LibreOffice Writer, Calc, and Impress.
- [ ] Browser with several windows.
- [ ] Messenger and media player.
- [ ] Two windows with identical captions.
- [ ] Window with no application icon.
- [ ] Minimized window.
- [ ] Window closed while the switcher is open (if KWin allows this interaction).

## Navigation and scope

- [ ] Alt+Tab.
- [ ] Shift+Alt+Tab.
- [ ] Left/Right in the horizontal deck.
- [ ] Arrow keys in the grid.
- [ ] Mouse click on a card.
- [ ] Escape cancels and restores focus.
- [ ] Current-desktop mode.
- [ ] All-desktops mode.
- [ ] Desktop labels correspond to the correct windows.

## Displays and scaling

- [ ] Single monitor at 100%.
- [ ] 125% and 150% scaling.
- [ ] 200% scaling.
- [ ] Multiple monitors with different resolutions.
- [ ] Switcher appears on the expected screen.
- [ ] Ultrawide and narrow display sizes.

## Lifecycle

- [ ] Fresh user-level install.
- [ ] Upgrade over an existing install.
- [ ] Select another switcher before uninstall.
- [ ] Uninstall package.
- [ ] Confirm the stock KWin switcher still works.
- [ ] Confirm no KWin settings or shortcuts were changed by the scripts.

## Performance

- [ ] Measure time from Alt+Tab key-down to visible switcher.
- [ ] Observe CPU/GPU usage while opening and cycling.
- [ ] Observe memory with 5, 10, and 20+ windows.
- [ ] Check for sustained activity after the switcher closes.
- [ ] Repeat open/cycle/close sequences to detect leaks or stalls.

Do not mark an item complete based on QML parsing or an offscreen render. Record actual results and environment details in the development log.

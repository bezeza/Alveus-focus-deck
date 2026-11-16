# Roadmap

This roadmap describes intended work. A checkbox is marked complete only when the work is implemented and verified; planned live-desktop checks are not treated as passed because CI is green.

## Current status

**0.1.0 — initial experimental package**

- [x] Standalone KWin WindowSwitcher package structure.
- [x] Centered horizontal Focus Deck layout for 1–6 windows.
- [x] Adaptive grid layout for 7+ windows.
- [x] Native KWin window thumbnails.
- [x] Window title, app icon, desktop-name label, and minimized marker.
- [x] Install and uninstall scripts.
- [x] Structural package checks and QML parser checks in CI.
- [ ] Live KDE Plasma session validation.
- [ ] Performance measurements on real hardware.
- [ ] Release archive and signed/tagged release.

## Stage 1 — Make the first package reliable

- [ ] Test Alt+Tab and Shift+Alt+Tab with 1, 2, 5, 6, 7, 10, and 20 open windows.
- [ ] Verify current-desktop and all-desktops switcher modes.
- [ ] Verify the desktop label against KWin's actual model roles.
- [ ] Test long document titles, duplicate titles, missing icons, and minimized windows.
- [ ] Test mouse activation and arrow-key navigation in both layouts.
- [ ] Test Escape/cancel behavior and focus restoration.
- [ ] Test one and multiple monitors.
- [ ] Test 100%, 125%, 150%, and 200% scaling.
- [ ] Test install, upgrade, switch to another layout, and uninstall.
- [ ] Measure switcher open latency, memory, CPU, and GPU use.

**Exit criteria:** no crash or stuck switcher; native cycling remains correct; no persistent background activity; manual results are recorded with Plasma/KWin/Qt versions.

## Stage 2 — Polish and accessibility

- [ ] Review layout at narrow and ultrawide resolutions.
- [ ] Verify text truncation and icon alignment with long titles.
- [ ] Review contrast and focus visibility.
- [ ] Review reduced-motion expectations and animation duration.
- [ ] Tune card sizes for dense window lists without making previews unreadable.
- [ ] Add translated strings where the package's own text needs localization.

**Exit criteria:** consistent layout across supported screen sizes and a documented keyboard-only path.

## Stage 3 — Packaging and distribution

- [ ] Verify package installation on supported Fedora KDE and another Plasma 6 distribution.
- [ ] Add a reproducible release archive.
- [ ] Document the supported Plasma/KWin compatibility range.
- [ ] Create a versioned Git tag only after live validation.
- [ ] Add release notes and attach the tested package archive.

**Exit criteria:** clean install/update/removal on supported distributions and a release checklist with no unverified claims.

## Later ideas (not committed scope)

- Optional visual density presets, only if they can remain presentation-only.
- Optional card spacing and size settings, only if KWin's switcher package API supports them cleanly.
- Additional layouts only after the current carousel/grid behavior is stable.

## Explicit non-goals

- A separate desktop application or dock.
- App launching, pinning, categories, search, filtering, or app-specific actions.
- A virtual-desktop manager or full desktop overview.
- A KWin script or background daemon.
- Ports to Cinnamon, Xfce, GNOME Shell, or Windows.

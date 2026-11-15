# Design notes

## Product idea

Focus Deck is a visual replacement for the standard KWin task-switcher layout. It should make the currently selected window obvious without hiding the surrounding choices.

## Visual language

- **Surface:** deep graphite/navy, with restrained transparency.
- **Focus:** a thin, high-contrast teal outline and a modest size increase.
- **Cards:** consistent geometry, compact application icon and window caption, preview area, and desktop/minimized metadata.
- **Motion:** short scale transition only; no decorative motion or blur layers.
- **Density:** prioritize legible previews over large decorative labels.

## Layout rules

### 1–6 windows

Use a horizontal PathView. The current item is emphasized at the center; neighboring items remain visible and smaller. The design should still be understandable when only one or two windows exist.

### 7+ windows

Use a grid with up to five columns, constrained by the available width. The current item remains highlighted. Arrow keys move through the grid.

## Interaction

KWin owns the window model, native Alt+Tab cycling, reverse cycling, cancel action, and activation lifecycle. Focus Deck only presents the model and synchronizes its current index with KWin.

Clicking a card requests activation through the KWin model. The theme must not launch applications or create its own window list.

## Content

Every application is treated equally. A PDF viewer, LibreOffice document, browser, messenger, and music player are ordinary open windows. The theme displays the title and icon provided by KWin; it does not infer document type or create app categories.

## Concept image

`docs/assets/focus-deck-concept.svg` is an illustrative design mockup. It is not a live capture and should not be described as a screenshot from a running KWin session.

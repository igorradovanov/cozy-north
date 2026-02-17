<p align="center">
  <img src="cozy-north.png" alt="Cozy North" width="150" />
</p>

<p align="center">
  <strong>Cozy North</strong><br>
  <em>A warm, Scandinavian-inspired CSS framework</em>
</p>

<p align="center">
  <a href="https://igorradovanov.github.io/cozy-north/"><img src="https://img.shields.io/badge/🔗_Live_Demo-Cozy_North-c4703f?style=for-the-badge" alt="Live Demo"></a>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/version-1.0.0-c4703f" alt="version">
  <img src="https://img.shields.io/badge/license-MIT-green" alt="license">
  <img src="https://img.shields.io/badge/gzip-~3kb-blue" alt="size">
  <img src="https://img.shields.io/badge/dependencies-0-brightgreen" alt="dependencies">
</p>

---

**Cozy North** is a lightweight, zero-dependency CSS framework built for warm, readable, and comfortable interfaces. Inspired by Scandinavian design principles — simplicity, natural warmth, and breathing room.

No JavaScript. No build step required. Just drop in the CSS and go.

## Features

- **Warm color palette** — Sepia tones, soft oranges, and cozy neutrals
- **Optimized typography** — 15px base, 1.65 line-height, 68ch max-width
- **13 components** — Buttons, cards, forms, tables, navbar, alerts, and more
- **Layout system** — Container, grid, stack, and row helpers
- **Utility classes** — Spacing, flex, shadows, and border-radius
- **Lightweight** — ~10KB raw, ~3KB gzipped
- **Zero dependencies** — Pure CSS, no JavaScript
- **CSS custom properties** — Easy theming via `--cozy-*` variables

## Quick Start

### CDN

```html
<link
  rel="stylesheet"
  href="https://unpkg.com/cozy-north/dist/cozy-north.min.css"
/>
```

### npm

```bash
npm install cozy-north
```

```css
@import "cozy-north/dist/cozy-north.min.css";
```

### Download

Grab [cozy-north.css](dist/cozy-north.css) or [cozy-north.min.css](dist/cozy-north.min.css) and link it in your HTML:

```html
<link rel="stylesheet" href="cozy-north.min.css" />
```

## Usage

### Buttons

```html
<button class="btn btn-primary">Primary</button>
<button class="btn btn-secondary">Secondary</button>
<button class="btn btn-warm">Warm</button>
<button class="btn btn-ghost">Ghost</button>
<button class="btn btn-primary btn-pill btn-lg">Large Pill</button>
```

### Cards

```html
<div class="card">
  <h4>Card Title</h4>
  <p class="text-soft">Card description goes here.</p>
</div>

<div class="card card-warm card-interactive">
  <h4>Interactive Warm Card</h4>
  <p class="text-soft">Hovers with a lift effect.</p>
</div>
```

### Forms

```html
<div class="input-group">
  <label class="label">Email</label>
  <input class="input" type="email" placeholder="you@example.com" />
</div>

<label class="row gap-sm" style="cursor: pointer">
  <input type="checkbox" class="checkbox" checked /> Remember me
</label>

<label class="row gap-sm" style="cursor: pointer">
  <input type="checkbox" class="toggle" /> Dark mode
</label>
```

### Layout

```html
<div class="container">
  <div class="grid grid-3">
    <div class="card">One</div>
    <div class="card">Two</div>
    <div class="card">Three</div>
  </div>
</div>

<div class="stack">
  <p>Stacked item 1</p>
  <p>Stacked item 2</p>
</div>
```

### Badges & Alerts

```html
<span class="badge badge-success">Active</span>
<span class="badge badge-warning">Pending</span>
<span class="badge badge-error">Error</span>

<div class="alert alert-info">Helpful information here.</div>
<div class="alert alert-success">Operation completed.</div>
```

### Navbar

```html
<nav class="navbar">
  <span class="navbar-brand">My App</span>
  <ul class="navbar-links">
    <li><a href="#" class="active">Home</a></li>
    <li><a href="#">About</a></li>
    <li><a href="#">Contact</a></li>
  </ul>
</nav>
```

## Theming

Cozy North uses CSS custom properties. Override them to create your own theme:

```css
:root {
  --cozy-orange: #2563eb; /* Change accent to blue */
  --cozy-rust: #1d4ed8;
  --cozy-orange-pale: #dbeafe;
  --cozy-bg: #f8fafc; /* Cooler background */
}
```

## Project Structure

```
cozy-north/
├── dist/
│   ├── cozy-north.css          # Full framework (formatted)
│   └── cozy-north.min.css      # Minified for production
├── src/
│   ├── base/
│   │   ├── reset.css           # Reset & box-sizing
│   │   ├── variables.css       # All CSS custom properties
│   │   └── typography.css      # Font styles, headings, prose
│   ├── components/
│   │   ├── buttons.css
│   │   ├── cards.css
│   │   ├── forms.css
│   │   ├── badges.css
│   │   ├── alerts.css
│   │   ├── table.css
│   │   ├── navbar.css
│   │   ├── sidebar.css
│   │   ├── avatar.css
│   │   ├── progress.css
│   │   ├── tooltip.css
│   │   ├── chat.css
│   │   └── skeleton.css
│   ├── layout/
│   │   ├── container.css
│   │   ├── grid.css
│   │   └── stack.css
│   ├── utilities/
│   │   └── utilities.css
│   └── cozy-north.css          # Main entry (@imports everything)
├── docs/
│   └── index.html              # Live demo / documentation
├── .gitignore
├── LICENSE
├── README.md
├── package.json
└── build.sh
```

## Building

```bash
# Make the build script executable
chmod +x build.sh

# Build dist files
./build.sh

# Or via npm
npm run build
```

For better minification, install `clean-css-cli`:

```bash
npm install -g clean-css-cli
./build.sh
```

## Components

| Component    | Class           | Variants                                 |
| ------------ | --------------- | ---------------------------------------- |
| **Button**   | `.btn`          | `-primary` `-secondary` `-warm` `-ghost` |
| **Card**     | `.card`         | `-warm` `-flat` `-interactive`           |
| **Input**    | `.input`        | `.textarea` `.select`                    |
| **Badge**    | `.badge`        | `-orange` `-success` `-warning` `-error` |
| **Alert**    | `.alert`        | `-info` `-success` `-warning` `-error`   |
| **Table**    | `.table`        | Styled `th` / `td` with hover            |
| **Navbar**   | `.navbar`       | `.navbar-brand` `.navbar-links`          |
| **Sidebar**  | `.sidebar`      | `.sidebar-item` `.sidebar-section`       |
| **Avatar**   | `.avatar`       | `-sm` `-lg`                              |
| **Progress** | `.progress`     | `.progress-bar`                          |
| **Tooltip**  | `.tooltip`      | `data-tooltip="text"`                    |
| **Toggle**   | `.toggle`       | Checkbox-based switch                    |
| **Checkbox** | `.checkbox`     | Custom styled checkbox                   |
| **Chat**     | `.chat-bubble`  | `-igorradovanov` `-assistant`            |
| **Skeleton** | `.skeleton`     | Animated loading placeholder             |
| **Divider**  | `.divider-text` | Horizontal rule with label               |

---

Originally developed in 2023.
Open-sourced in 2026.

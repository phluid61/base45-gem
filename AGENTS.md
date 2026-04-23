# Agent Instructions

## Overview

This is the `gh-pages` branch of the Base45 gem. It contains the source for
the project's GitHub Pages site, which presents the gem's documentation as a
single HTML page.

The site inherits its layout from
[phluid61.github.io](https://github.com/phluid61/phluid61.github.io)
via the `jekyll-remote-theme` plugin.

## Repository Layout

- `index.html` — generated output (committed by CI; do not edit by hand)
- `_config.yml` — Jekyll configuration (`remote_theme`)
- `_data/navigation.yml` — navbar menu data (shared with the parent theme)
- `Rakefile` — build script; compiles `README.md`, `LICENSE`, and
  `code_of_conduct.md` into `index.html`
- `Gemfile` — Ruby dependencies (`commonmarker`)
- `markdown` — helper script that converts Markdown to HTML
- `highlight.js/` — syntax highlighting for code blocks
- `page.css` — page-specific styles
- `.github/workflows/deploy-pages.yml` — rebuilds `index.html` when source
  files on this branch change

## Building

```
bundle install
rake          # compiles index.html (default task)
rake clean    # removes the generated index.html
```

## Deployment

Two workflows keep the site up to date:

- `.github/workflows/deploy-pages.yml` (on `gh-pages`) — triggers when source
  files are pushed directly to this branch; rebuilds `index.html`.
- `.github/workflows/update-pages.yml` (on `main`) — triggers when `README.md`,
  `LICENSE`, or `code_of_conduct.md` change on `main`; syncs those files here
  and rebuilds.

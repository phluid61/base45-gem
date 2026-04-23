# Agent Instructions

## Project Overview

This is a Ruby gem. See `base45.gemspec` for metadata and `README.md` for
public API documentation.

The encoding scheme is defined in [RFC 9285](https://datatracker.ietf.org/doc/rfc9285/).

## Repository Layout

- `lib/` — All library source code (single-file module)
- `base45.gemspec` — Gem specification (name, version, metadata)
- `LICENSE` — ISC licence

## Standards

- This project follows the [Contributor Covenant](code_of_conduct.md).

## Building and Testing

There is no test suite or build pipeline at present. The gem can be built
with:

```
gem build base45.gemspec
```

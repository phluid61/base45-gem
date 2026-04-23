# Copilot Instructions

## Code Style

- Document public methods with YARD (`##` block, `@param`, `@return`).
- Use `def self.method_name` for module methods, not `class << self`.

## Domain

The encoding is defined in [RFC 9285](https://datatracker.ietf.org/doc/rfc9285/).
Refer to the RFC for encoding and decoding behaviour; do not infer rules from
the implementation alone.

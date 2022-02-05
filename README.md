Base45
======

[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](code_of_conduct.md)

A module that can Encode/Decode a string in Base45.

See: <https://datatracker.ietf.org/doc/draft-faltstrom-base45>

Usage
-----

### Base45::encode(bytes)

Encodes a string in Base45.

| Item    |                 | Description              |
| ------- | --------------- | ------------------------ |
| @param  | \[String] bytes | the string to be encoded |
| @return | \[String]       | a Base45-encoded string  |

```ruby
require 'base45'

Base45::encode("Hello!!")  #=> "%69 VD92EX0"
```

### Base45::decode(b45)

Decodes a Base45-encoded string.

| Item    |                 | Description                           |
| ------- | --------------- | ------------------------------------- |
| @param  | \[String] b45 | the Base45-encoded string to be decoded |
| @return | \[String]     | the decoded bytes, as a string          |

```ruby
require 'base45'

Base45::decode("QED8WEX0")  #=> "ietf!"
```


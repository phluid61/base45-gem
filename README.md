# Base45

[![Gem Version](https://badge.fury.io/rb/base45.png)](http://badge.fury.io/rb/base45)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v3.0%20adopted-ff69b4.svg)](code_of_conduct.md)

A module that can Encode/Decode a string in Base45.

See: <https://datatracker.ietf.org/doc/rfc9285/>

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


## Contributing

We require all contributors to comply with the [Developer Certificate of Origin](https://developercertificate.org/). This ensures that all contributions are properly licensed and attributed.


### Contributor Code of Conduct

This repository is subject to a [Contributor Code of Conduct](code_of_conduct.md)
adapted from the [Contributor Covenant][cc], version 3.0, available at
<https://www.contributor-covenant.org/version/3/0/>


[cc]: https://www.contributor-covenant.org


## Licence

This project is licensed under the ISC licence. See [LICENSE](LICENSE)
for details


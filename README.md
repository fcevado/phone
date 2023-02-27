# Phone

[![Build Status](https://travis-ci.org/fcevado/phone.svg?branch=master)](https://travis-ci.org/fcevado/phone)
[![Coverage Status](https://coveralls.io/repos/github/fcevado/phone/badge.svg?branch=master)](https://coveralls.io/github/fcevado/phone?branch=master)
[![Module Version](https://img.shields.io/hexpm/v/phone.svg)](https://hex.pm/packages/phone)
[![Hex Docs](https://img.shields.io/badge/hex-docs-lightgreen.svg)](https://hexdocs.pm/phone/)
[![Total Download](https://img.shields.io/hexpm/dt/phone.svg)](https://hex.pm/packages/phone)
[![License](https://img.shields.io/hexpm/l/phone.svg)](https://github.com/fcevado/phone/blob/master/LICENSE)
[![Last Updated](https://img.shields.io/github/last-commit/fcevado/phone.svg)](https://github.com/fcevado/phone/commits/master)

Phone number parser for telephone numbers in international standard or missing international country code, for [Elixir](http://elixir-lang.org).

Note on version `0.4.0` onward: `Phone` was rebuild to increase performance, that may increase compilation time but made `Phone` 100 times faster.

* [Online Documentation](https://hexdocs.pm/phone/readme.html)
* [Hex](https://hex.pm/packages/phone)

## About

What is, what isn't and what will be about Phone:
  1. It isn't:
     * Intended to work as libphonenumber.
     * Prepared to format numbers.
     * Necessary any information about the number if in international standard.
  2. It is:
     * A real parser, created to extract information based only in the number.
     * Prepared to work with numbers not only in the international standard.
  3. It will have:
     * Area code info for every country that numbering plan has area codes.

  * Patterns:
    * Countries without area code info:
        ```elixir
        %{
          country: "Country Name",
          a2: "Alpha-2",
          a3: "Alpha-3",
          international_code: "1",
          area_code: "yyy",
          number: "xxxxxxx"
        }
        ```

    * Countries with area code info:
        ```elixir
        %{
          country: "Country Name",
          a2: "Alpha-2 code",
          a3: "Alpha-3 code",
          international_code: "1",
          number: "xxxxxxx",
          area_code: "yyy",
          area_name: "Area Name",
          area_type: "state",
          area_abbreviation: "AN"
        }
        ```

## Area Codes

  Countries that already has area code info:
  * United States.
  * Canada.
  * Brazil.
  * Spain.

## Vocabulary

  * a2: Alpha-2, two letters code for country names.
  * a3: Alpha-3, three letters code for country names.
  * NANP: North American Numbering Plan, numbering plan for countries with international code number 1.
  * Numbering Plan: The rules and specifications of how telephone numbers works in a given country.

## Installation

Add to your dependencies like any other hex package:

```elixir
defp deps do
  [
    {:phone, "0.5.0"}
  ]
end
```

## License

Copyright (c) 2016 Flávio Moreira Vieira

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at [http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

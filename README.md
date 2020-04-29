# Phone
[![Build Status](https://travis-ci.org/fcevado/phone.svg?branch=master)](https://travis-ci.org/fcevado/phone)
[![Coverage Status](https://coveralls.io/repos/github/fcevado/phone/badge.svg?branch=master)](https://coveralls.io/github/fcevado/phone?branch=master)
||
[![Ebert](https://ebertapp.io/github/fcevado/phone.svg)](https://ebertapp.io/github/fcevado/phone)
[![GitHub issues](https://img.shields.io/github/issues/fcevado/phone.svg)](https://github.com/fcevado/phone/issues)
[![Inline docs](http://inch-ci.org/github/fcevado/phone.svg?branch=master)](http://inch-ci.org/github/fcevado/phone)
||
[![Phone version](https://img.shields.io/hexpm/v/phone.svg)](https://hex.pm/packages/phone)
[![Hex.pm](https://img.shields.io/hexpm/dt/phone.svg)](https://hex.pm/packages/phone)
[![GitHub license](https://img.shields.io/badge/license-Apache%202-blue.svg)](https://raw.githubusercontent.com/fcevado/phone/master/LICENSE)

Phone number parser for telephone numbers in international standard or missing international country code, for [Elixir](http://elixir-lang.org).

Note on version `0.4.0` onward: `Phone` was rebuild to increase performance, that may increase compilation time but made `Phone` 100 times faster.

* [Online Documentation](https://hexdocs.pm/phone/api-reference.html)
* [Hex](https://hex.pm/packages/phone)

## About
What is, what isnt and what will be about Phone:
  1. It isnt:
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
Add to your depencies like any other hex package.

```elixir
defp deps do
  [{:phone, "0.5.0"}]
end
```

## [Contributing](./CONTRIBUTING.md)

## [Changelog](./CHANGELOG.md)

## [Code of Conduct](./CODE_OF_CONDUCT.md)

## License
Phone is under Apache v2.0 license. Check the [LICENSE](./LICENSE) file for more details.

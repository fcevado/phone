# Phone
[![Build Status](https://travis-ci.org/fcevado/phone.svg?branch=master)](https://travis-ci.org/fcevado/phone)
[![Phone version](https://img.shields.io/hexpm/v/phone.svg)](https://hex.pm/packages/phone)
[![Inline docs](http://inch-ci.org/github/fcevado/phone.svg?branch=master)](http://inch-ci.org/github/fcevado/phone)
[![Hex.pm](https://img.shields.io/hexpm/dt/phone.svg)](https://hex.pm/packages/phone)
[![GitHub issues](https://img.shields.io/github/issues/fcevado/phone.svg)](https://github.com/fcevado/phone/issues)
[![GitHub license](https://img.shields.io/badge/license-Apache%202-blue.svg)](https://raw.githubusercontent.com/fcevado/phone/master/LICENSE)

Phone number parser for numbers in international standard for Elixir.

## About
What is, what isnt and what will be about Phone:
  1. It isnt:
    * Intended to work as libphonenumber.
    * Prepared to format numbers.
    * Necessary any information about the number if in international standard.
  2. It is:
    * A real parser, created to extract information based only in the number.
  3. It will be:
    * Prepared to work with numbers not only in the international standard.
    * Prepared for internationalization.

  * Patterns:
    * Countries without area code info:
        ```
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
        ```
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

## Vocabulary
  * a2: Alpha-2, two letters code for country names.
  * a3: Alpha-3, three letters code for country names.
  * NANP: North American Numbering Plan, numbering plan for countries with international code number 1.
  * Numbering Plan: The rules and specifications of how telephone numbers works in a given country.

## Installation
Add to your depencies like any other hex package.
```
{:phone, "0.1.1"}
```

## Contributing
There are may ways you can help this project grow, like:
  * Create an issue if you find any inconsistency with our parsing. If possible give us official information about the numbering plan of your country.
  * Create a PR adding area code info for a country that is missing.

Since for this project that would be a lot of repeating code, there is some helpers for creating a country module and a area.

Required fields for an area module:
  * regex, with the full regex for identifing that area number.
  * area_name, with the full area name.
  * area_type, the kind of area in that given country, it could be a state, province, territory, etc.
  * area_abbreviation, the abbreviation for the area name.
```
  defmodule Phone.NANP.CA.AB do
    use Helper.Area
    field :regex, ~r/^(1)(403|780|587)([2-9].{6})/
    field :area_name, "Alberta"
    field :area_type, "province"
    field :area_abbreviation, "AB"
    builder
  end
```

Required fields for an country module:
  * regex, with the full regex for identifing that country. Not needed if has area modules.
  * country, with the full country name.
  * a2, two letter code for that country.
  * a3, three letter code for that country.
  * modules, list of area modules for that country.
  * match, a macro to say if that country should match against regex or the list of area modules.
```
  defmodule Phone.NANP.AG do
    use Helper.Country
    field :regex, ~r/^(1)(268)([2-9].{6})/
    field :country, "Antigua and Barbuda"
    field :a2, "AG"
    field :a3, "ATG"
    match :regex
  end
```
```
  defmodule Phone.NANP.CA do
    use Helper.Country
    field :country, "Canada"
    field :a2, "CA"
    field :a3, "CAN"
    field :modules, [
      Phone.NANP.CA.AB,
      Phone.NANP.CA.BC,
      Phone.NANP.CA.MB,
      Phone.NANP.CA.NB,
      Phone.NANP.CA.NL,
      Phone.NANP.CA.NS_PE,
      Phone.NANP.CA.ON,
      Phone.NANP.CA.QC,
      Phone.NANP.CA.SK,
      Phone.NANP.CA.Territory
    ]
    match :modules
  end
```


##[Changelog](./CHANGELOG.md)

##[Code of Conduct](./CODE_OF_CONDUCT.md)

## License
Phone is under Apache v2.0 license. Check the [LICENSE](./LICENSE) file for more details.

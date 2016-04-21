# Phone
Phone number parser for numbers in international standard for Elixir.

## About
What will be and what wont be about Phone:
  1. It wont be:
    * Intended to work as libphonenumber.
    * Prepared to format numbers.
    * Necessary any information about the number if in international standard.
  2. It will be:
    * A real parser, created to extract information based only in the number.
    * Prepared to work with numbers not only in the international standard.
    * Prepared for internationalization.

  3. Patterns:
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


## Progress
~~I've done NANP countries and areas, Norway, Australia, Russia, Kazakhstan and countries that 2-letter code starts with A and B.
I perceived that I had a lot of repeating code and it was really unnecessary, so I've been studing metaprograming to solve this.
Refactoring done. Focus on doing all countries.~~
Tests and documentation.

## Vocabulary
  - a2: Alpha-2, two letters code for country names.
  - a3: Alpha-3, three letters code for country names.
  - NANP: North American Numbering Plan, numbering plan for countries with international code number 1.

## Installation
Not ready for use.

##[Changelog](./CHANGELOG.md)

##[Code of Conduct](./CODE_OF_CONDUCT.md)

## License
Phone is under Apache v2.0 license. Check the [LICENSE](./LICENSE) file for more details.

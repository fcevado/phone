# Changelog

## v0.5.7 - 2023-05-28

  * Fix typespecs
  * Add missing countries Guadaloupe(GP) and Reunion(RE),
  * Add missing area code for IE.
  * Add missing area code for Texas and California, US.

## v0.5.6 - 2022-02-28

  * Fix pattern match for Brazil regions: PI, PR, RS.

## v0.5.5 - 2022-01-20

  * Fix pattern match for Russia.

## v0.5.4 - 2021-05-20

  * Add new area code for US, Florida.

## v0.5.3 - 2021-05-15

  * Add support to mobile spanish phone numbers.
  * Improve documentation.

## v0.5.2 - 2020-12-29

  * Update regex for Jamaica to support new region code.
  * Fix typo on Saint Vincent and the Grenadines country name.

## v0.5.1 - 2020-05-06

  * Update regex for Singapore to support 10 digits number.

## v0.5.0 - 2020-04-29

  * Add support to region codes for Spain.

## v0.4.11 - 2020-04-27

  * Update regex for Belgium.

## v0.4.10 - 2020-03-31

  * Add new area codes for US, California.
  * Update regex for Netherlands

## v0.4.9 - 2020-03-12

  * Add Vancouver missing area code

## v0.4.8 - 2020-01-20

  * Add brazilian toll free numbers

## v0.4.6 - 2019-07-02

  * Fix max length for German numbers to 11

## v0.4.5 - 2019-02-21

  * Fix Italy regex to consider 3 minimum digits and max 12

## v0.4.4 - 2019-01-16

  * Fix Australia regex
  * Fix Ireland regex

## v0.4.4 - 2019-01-16

  * Fix United Arab Emirates parsing
  * Fix Germany parsing
  * Fix Brazil parsing
  * Fix South Africa parsing
  * Fix Pakistan parsing
  * Fix Monaco parsing
  * Fix Ireland parsing

## v0.4.3 - 2018-03-24

  * Add Idaho, New York, Pennsylvania, Texas, Washington missing area codes.
  * Fix typo on NANP Toll Free Number module.

## v0.4.2 - 2017-09-05

  * Correct parsing for Angola numbers

## v0.4.1 - 2017-06-16

  * Add 833 toll free number to NANP

## v0.4.0 - 2017-04-02

  * Updates `Helper.Countries` and `Helper.Area` behavior
  * Several changes to improve performance.
  * Include `valid?/1`.
  * Remove warning from v0.3

## v0.3.10 - 2017-01-15

  * Correct number validation for Norway.
  * Correct Ireland area codes validation.

## v0.3.9 - 2016-11-11

  * Add and correct various area codes for NANP.
  * Better test coverage for NANP numbers.

## v0.3.8 - 2016-11-09

  * Add 424 area code for California.
  * Add 475 area code for Connecticut.

## v0.3.7 - 2016-10-28

  * Correct area code for Ontario - US.

## v0.3.6 - 2016-08-26

  * Correct number validation to Italy.

## v0.3.5 - 2016-08-14

  * Correct number validation to Bosnia and Herzegovina.

## v0.3.4 - 2016-08-03

  * Correct number validation to Estonia.

## v0.3.3 - 2016-08-02

  * Correct number validation to São Paulo - BR.

## v0.3.2 - 2016-07-24

  * Area codes for Brazil.
  * Updated all regular expressions for NANP, to enforce end of line.

## v0.3.1 - 2016-07-21

  * Issues with Croatia numbers corrected.

## v0.3.0 - 2016-07-10

  * Changed `parse/2` parameters order for a better use on pipes.
  * Added functions `parse!/1` and `parse!/2` for a direct return, and raises on error.

## v0.2.1 - 2016-06-14

  * Correct area codes for Colorado - US.

## v0.2.0 - 2016-06-05

  * Add `parse/2` to `Phone` module, so can parse phone numbers without international code but with atom identifying the country.

## v0.1.0 - 2016-04-21

  * First public release

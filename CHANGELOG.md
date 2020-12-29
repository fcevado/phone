# Changelog

## v0.5.2

  * Update regex for Jamaica to support new region code. 
  * Fix typo on Saint Vincent and the Grenadines country name.

## v0.5.1

  * Update regex for Singapore to support 10 digits number. 

## v0.5.0

  * Add support to region codes for Spain. 

## v0.4.11

  * Update regex for Belgium.

## v0.4.10

  * Add new area codes for US, California.
  * Update regex for Netherlands

## v0.4.9

  * Add Vancouver missing area code

## v0.4.8

  * Add brazilian toll free numbers

## v0.4.6

  * Fix max length for German numbers to 11

## v0.4.5

  * Fix Italy regex to consider 3 minimum digits and max 12

## v0.4.4:
  * Fix Australia regex
  * Fix Ireland regex

## v0.4.4:
  * Fix United Arab Emirates parsing
  * Fix Germany parsing
  * Fix Brazil parsing
  * Fix South Africa parsing
  * Fix Pakistan parsing
  * Fix Monaco parsing
  * Fix Ireland parsing
  
## v0.4.3:
  * Add Idaho, New York, Pennsylvania, Texas, Washington missing area codes.
  * Fix typo on NANP Toll Free Number module.

## v0.4.2:
  * Correct parsing for Angola numbers

## v0.4.1:
  * Add 833 toll free number to NANP

## v0.4.0:
  * Updates `Helper.Countries` and `Helper.Area` behavior
  * Several changes to improve performance.
  * Include `valid?/1`.
  * Remove warning from v0.3

## v0.3.10:
  * Correct number validation for Norway.
  * Correct Ireland area codes validation.

## v0.3.9:
  * Add and correct various area codes for NANP.
  * Better test coverage for NANP numbers.

## v0.3.8:
  * Add 424 area code for California.
  * Add 475 area code for Connecticut.

## v0.3.7:
  * Correct area code for Ontario - US.

## v0.3.6:
  * Correct number validation to Italy.

## v0.3.5:
  * Correct number validation to Bosnia and Herzegovina.

## v0.3.4:
  * Correct number validation to Estonia.

## v0.3.3:
  * Correct number validation to São Paulo - BR.

## v0.3.2:
  * Area codes for Brazil.
  * Updated all regular expressions for NANP, to enforce end of line.

## v0.3.1:
  * Issues with Croatia numbers corrected.

## v0.3.0:
  * Changed `parse/2` parameters order for a better use on pipes.
  * Added functions `parse!/1` and `parse!/2` for a direct return, and raises on error.

## v0.2.1:
  * Correct area codes for Colorado - US.

## v0.2.0:
  * Add `parse/2` to `Phone` module, so can parse phone numbers without international code but with atom identifying the country.

## v0.1.0:
  * First public release


There are a couple of ways you can help this project grow, like:
  * Create an issue if you find any inconsistency with our parsing. If possible give us official information about the numbering plan of your country.
  * Create a PR adding area code info for a country that is missing.

### Helpers Modules

#### Area Modules
The helper for area module prepare everything for the expected behavior of this kind of modules, so you just need to write some static functions that will be overwritten and helps to identify information of what that module describes. The expected functions are: `regex/0`, `area_name/0`, `area_type/0`and `area_abbreviation/0`. There is the `matcher/1` macro, that will create the functions that makes heavy use of pattern matching, the argument is a list of values that will be pattern matched on calling functions, they're the combination of the country code and all the possible area code.
```elixir
defmodule Phone.NANP.CA.AB do
  use Helper.Area

  def regex, do: ~r/^(1)(403|780|587|825)([2-9].{6})$/
  def area_name, do: "Alberta"
  def area_type, do: "province"
  def area_abbreviation, do: "AB"

  matcher ["1403", "1780", "1587", "1825"]
end
```

### Country Modules
Country modules works similar to area modules but there are two types of country modules. The first have the static functions to be overwritten, `regex/0`, `country/0`, `a2/0`, `a3/0`, and the macro `matcher/2`, the first parameter specifies that you must use `regex/0` to identify the number, the second works just as the list of pattern matchings you want to build to this module.
```elixir
defmodule Phone.AE do
  use Helper.Country

  def regex, do: ~r/^(971)(.)(.{7})/
  def country, do: "United Arab Emirates"
  def a2, do: "AE"
  def a3, do: "ARE"

  matcher :regex, ["971"]
end
```

The second just need to overwrite the functions, `country/0`, `a2/0` and `a3/0`. The macro `matcher/2` now specifies that you must use the list of modules in the second parameter to identify the number.
```elixir
defmodule Phone.NANP.CA do
  use Helper.Country

  def country, do: "Canada"
  def a2, do: "CA"
  def a3, do: "CAN"

  matcher :modules, [Phone.NANP.CA.AB, Phone.NANP.CA.BC, Phone.NANP.CA.MB,
                     Phone.NANP.CA.NB, Phone.NANP.CA.NL, Phone.NANP.CA.NS_PE,
                     Phone.NANP.CA.ON, Phone.NANP.CA.QC, Phone.NANP.CA.SK,
                     Phone.NANP.CA.Territory]
end
```

There are a couple of ways you can help this project grow, like:
  * Create an issue if you find any inconsistency with our parsing. If possible give us official information about the numbering plan of your country.
  * Create a PR adding area code info for a country that is missing.

### Helpers Modules

#### Area Modules
The helper for area module prepare everything for the expected behavior of this kind of modules, so you just need to write some static functions that will be overwritten and helps to identify information of what that module describes. The expected functions are: `regex\0`, `area_name\0`, `area_type\0`and `area_abbreviation\0`. There is the `matcher\1` macro, that will create the functions that makes heavy use of pattern matching, the argument is a list of values that will be pattern matched on calling functions, they're the combination of the country code and all the possible area code.
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

Required fields for an country module:
  * regex, with the full regex for identifing that country. Not needed if has area modules.
  * country, with the full country name.
  * a2, two letter code for that country.
  * a3, three letter code for that country.
  * modules, list of area modules for that country.
  * match, a macro to say if that country should match against regex or the list of area modules.

```elixir
  defmodule Phone.NANP.AG do
    use Helper.Country
    field :regex, ~r/^(1)(268)([2-9].{6})/
    field :country, "Antigua and Barbuda"
    field :a2, "AG"
    field :a3, "ATG"
    match :regex
  end
```


```elixir
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


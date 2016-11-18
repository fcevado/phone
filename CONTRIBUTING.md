There are a couple of ways you can help this project grow, like:
  * Create an issue if you find any inconsistency with our parsing. If possible give us official information about the numbering plan of your country.
  * Create a PR adding area code info for a country that is missing.

To reduce lines of code, there are helpers for area and country modules.

Required fields for an area module:
  * regex, with the full regex for identifing that area number.
  * area_name, with the full area name.
  * area_type, the kind of area in that given country, it could be a state, province, territory, etc.
  * area_abbreviation, the abbreviation for the area name.

```elixir
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

```elixir
  defmodule Phone.NANP.AG do
    use Helper.Country, match: regex
    field :regex, ~r/^(1)(268)([2-9].{6})/
    field :country, "Antigua and Barbuda"
    field :a2, "AG"
    field :a3, "ATG"
  end
```


```elixir
  defmodule Phone.NANP.CA do
    use Helper.Country, match: :modules
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
  end
```


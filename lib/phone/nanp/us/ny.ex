defmodule Phone.NANP.US.NY do
  @moduledoc false

  use Helper.Area

  def regex,
    do:
      ~r/^(1)(212|315|332|347|516|518|585|607|631|646|680|716|718|838|845|914|917|929|934)([2-9].{6})$/

  def area_name, do: "New York"
  def area_type, do: "state"
  def area_abbreviation, do: "NY"

  matcher([
    "1212",
    "1315",
    "1332",
    "1347",
    "1516",
    "1518",
    "1585",
    "1607",
    "1631",
    "1646",
    "1680",
    "1716",
    "1718",
    "1838",
    "1845",
    "1914",
    "1917",
    "1929",
    "1934"
  ])
end

defmodule Phone.NANP.US.FL do
  @moduledoc false

  use Helper.Area

  def regex do
    ~r/^(1)(239|305|321|352|386|407|448|561|689|727|754|772|786|813|850|863|904|941|954)([2-9].{6})$/
  end

  def area_name, do: "Florida"
  def area_type, do: "state"
  def area_abbreviation, do: "FL"

  matcher([
    "1239",
    "1305",
    "1321",
    "1352",
    "1386",
    "1407",
    "1448",
    "1561",
    "1689",
    "1727",
    "1754",
    "1772",
    "1786",
    "1813",
    "1850",
    "1863",
    "1904",
    "1941",
    "1954"
  ])
end

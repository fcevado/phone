defmodule Phone.NANP.CA do
  @country "Canada"
  @a2 "CA"
  @a3 "CAN"
  @modules [
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

  def match?(number) do
    module = Enum.filter(@modules, fn(x) -> x.match?(number) end)

    length(module) > 0
  end

  def build(number) do
    [module] = Enum.filter(@modules, fn(x) -> x.match?(number) end)

    module.build(number)
  end

  def country do
    @country
  end

  def a2 do
    @a2
  end

  def a3 do
    @a3
  end

  def abbreviation do
    %{a2: @a2, a3: @a3}
  end
end

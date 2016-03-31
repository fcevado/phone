defmodule Phone.NANP.US do
  @modules [
    Phone.NANP.US.AK,
    Phone.NANP.US.AL,
    Phone.NANP.US.AR,
    Phone.NANP.US.AZ,
    Phone.NANP.US.CA,
    Phone.NANP.US.CO,
    Phone.NANP.US.CT,
    Phone.NANP.US.DC,
    Phone.NANP.US.DE,
    Phone.NANP.US.FL,
    Phone.NANP.US.GA,
    Phone.NANP.US.HI,
    Phone.NANP.US.IA,
    Phone.NANP.US.ID,
    Phone.NANP.US.IL,
    Phone.NANP.US.IN,
    Phone.NANP.US.KS,
    Phone.NANP.US.KY,
    Phone.NANP.US.LA,
    Phone.NANP.US.MA,
    Phone.NANP.US.MD,
    Phone.NANP.US.ME,
    Phone.NANP.US.MI,
    Phone.NANP.US.MN,
    Phone.NANP.US.MO,
    Phone.NANP.US.MS,
    Phone.NANP.US.MT,
    Phone.NANP.US.NC,
    Phone.NANP.US.ND,
    Phone.NANP.US.NE,
    Phone.NANP.US.NH,
    Phone.NANP.US.NJ,
    Phone.NANP.US.NM,
    Phone.NANP.US.NV,
    Phone.NANP.US.NY,
    Phone.NANP.US.OH,
    Phone.NANP.US.OK,
    Phone.NANP.US.OR,
    Phone.NANP.US.PA,
    Phone.NANP.US.RI,
    Phone.NANP.US.SC,
    Phone.NANP.US.SD,
    Phone.NANP.US.TN,
    Phone.NANP.US.TX,
    Phone.NANP.US.UT,
    Phone.NANP.US.VT,
    Phone.NANP.US.VA,
    Phone.NANP.US.WA,
    Phone.NANP.US.WI,
    Phone.NANP.US.WV,
    Phone.NANP.US.WY
  ]
  @country "United States"
  @a2 "US"
  @a3 "USA"

  def match?(number) do
    module = Enum.filter(@modules, fn (x) -> x.match?(number) end)

    length(module)
  end

  def build(number) do
    [module] = Enum.filter(@modules, fn (x) -> x.match?(number) end)

    module.build(number)
  end

  def country do
    @country
  end

  def a2 do
    @a2
  end

  def a3 do
    a3
  end

  def abbreviation do
    %{a2: @a2, a3: @a3}
  end

end

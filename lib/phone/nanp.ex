defmodule Phone.NANP do
  @regex ~r/1(.+)/
  @modules [
    Phone.NANP.AS,
    Phone.NANP.AI,
    Phone.NANP.AG,
    Phone.NANP.BS,
    Phone.NANP.BB,
    Phone.NANP.BM,
    Phone.NANP.CA,
    Phone.NANP.DM,
    Phone.NANP.DO,
    Phone.NANP.GD,
    Phone.NANP.GU,
    Phone.NANP.JM,
    Phone.NANP.KN,
    Phone.NANP.KY,
    Phone.NANP.LC,
    Phone.NANP.MP,
    Phone.NANP.MS,
    Phone.NANP.PR,
    Phone.NANP.SX,
    Phone.NANP.TC,
    Phone.NANP.TT,
    Phone.NANP.US,
    Phone.NANP.VC,
    Phone.NANP.VG,
    Phone.NANP.VI,
    Phone.NANP.TollFree
  ]

  def match?(number) do
    if Regex.match?(@regex,number) do
      [[_, number]] = Regex.scan(@regex, number)
      module = Enum.filter(@modules, fn (x) -> x.match?(number) end)
      length(module) > 0
    else
      false
    end
  end

  def build(number) do
    [[_, number]] = Regex.scan(@regex, number)
    [module] = Enum.filter(@modules, fn(x) -> x.match?(number) end)

    module.build(number)
  end
end

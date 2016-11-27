defmodule Phone.NANP do
  def build("1684" <> _ = number), do: Phone.NANP.AS.build(number)
  def build("1264" <> _ = number), do: Phone.NANP.AI.build(number)
  def build("1268" <> _ = number), do: Phone.NANP.AG.build(number)
  def build("1242" <> _ = number), do: Phone.NANP.BS.build(number)
  def build("1246" <> _ = number), do: Phone.NANP.BB.build(number)
  def build("1441" <> _ = number), do: Phone.NANP.BM.build(number)
  def build("1767" <> _ = number), do: Phone.NANP.DM.build(number)
  def build("1809" <> _ = number), do: Phone.NANP.DO.build(number)
  def build("1829" <> _ = number), do: Phone.NANP.DO.build(number)
  def build("1849" <> _ = number), do: Phone.NANP.DO.build(number)
  def build("1473" <> _ = number), do: Phone.NANP.GD.build(number)
  def build("1671" <> _ = number), do: Phone.NANP.GU.build(number)
  def build("1876" <> _ = number), do: Phone.NANP.JM.build(number)
  def build("1869" <> _ = number), do: Phone.NANP.KN.build(number)
  def build("1345" <> _ = number), do: Phone.NANP.KY.build(number)
  def build("1758" <> _ = number), do: Phone.NANP.LC.build(number)
  def build("1670" <> _ = number), do: Phone.NANP.MP.build(number)
  def build("1664" <> _ = number), do: Phone.NANP.MS.build(number)
  def build("1787" <> _ = number), do: Phone.NANP.PR.build(number)
  def build("1939" <> _ = number), do: Phone.NANP.PR.build(number)
  def build("1721" <> _ = number), do: Phone.NANP.SX.build(number)
  def build("1649" <> _ = number), do: Phone.NANP.TC.build(number)
  def build("1868" <> _ = number), do: Phone.NANP.TT.build(number)
  def build("1784" <> _ = number), do: Phone.NANP.VC.build(number)
  def build("1284" <> _ = number), do: Phone.NANP.VG.build(number)
  def build("1340" <> _ = number), do: Phone.NANP.VI.build(number)
  def build("1800" <> _ = number), do: Phone.NANP.TollFree.build(number)
  def build("1844" <> _ = number), do: Phone.NANP.TollFree.build(number)
  def build("1855" <> _ = number), do: Phone.NANP.TollFree.build(number)
  def build("1866" <> _ = number), do: Phone.NANP.TollFree.build(number)
  def build("1877" <> _ = number), do: Phone.NANP.TollFree.build(number)
  def build("1888" <> _ = number), do: Phone.NANP.TollFree.build(number)

  def build!("1684" <> _ = number), do: Phone.NANP.AS.build!(number)
  def build!("1264" <> _ = number), do: Phone.NANP.AI.build!(number)
  def build!("1268" <> _ = number), do: Phone.NANP.AG.build!(number)
  def build!("1242" <> _ = number), do: Phone.NANP.BS.build!(number)
  def build!("1246" <> _ = number), do: Phone.NANP.BB.build!(number)
  def build!("1441" <> _ = number), do: Phone.NANP.BM.build!(number)
  def build!("1767" <> _ = number), do: Phone.NANP.DM.build!(number)
  def build!("1809" <> _ = number), do: Phone.NANP.DO.build!(number)
  def build!("1829" <> _ = number), do: Phone.NANP.DO.build!(number)
  def build!("1849" <> _ = number), do: Phone.NANP.DO.build!(number)
  def build!("1473" <> _ = number), do: Phone.NANP.GD.build!(number)
  def build!("1671" <> _ = number), do: Phone.NANP.GU.build!(number)
  def build!("1876" <> _ = number), do: Phone.NANP.JM.build!(number)
  def build!("1869" <> _ = number), do: Phone.NANP.KN.build!(number)
  def build!("1345" <> _ = number), do: Phone.NANP.KY.build!(number)
  def build!("1758" <> _ = number), do: Phone.NANP.LC.build!(number)
  def build!("1670" <> _ = number), do: Phone.NANP.MP.build!(number)
  def build!("1664" <> _ = number), do: Phone.NANP.MS.build!(number)
  def build!("1787" <> _ = number), do: Phone.NANP.PR.build!(number)
  def build!("1939" <> _ = number), do: Phone.NANP.PR.build!(number)
  def build!("1721" <> _ = number), do: Phone.NANP.SX.build!(number)
  def build!("1649" <> _ = number), do: Phone.NANP.TC.build!(number)
  def build!("1868" <> _ = number), do: Phone.NANP.TT.build!(number)
  def build!("1784" <> _ = number), do: Phone.NANP.VC.build!(number)
  def build!("1248" <> _ = number), do: Phone.NANP.VG.build!(number)
  def build!("1340" <> _ = number), do: Phone.NANP.VI.build!(number)
  def build!("1800" <> _ = number), do: Phone.NANP.TollFree.build!(number)
  def build!("1844" <> _ = number), do: Phone.NANP.TollFree.build!(number)
  def build!("1855" <> _ = number), do: Phone.NANP.TollFree.build!(number)
  def build!("1866" <> _ = number), do: Phone.NANP.TollFree.build!(number)
  def build!("1877" <> _ = number), do: Phone.NANP.TollFree.build!(number)
  def build!("1888" <> _ = number), do: Phone.NANP.TollFree.build!(number)

  def build(number) do
    modules = [Phone.NANP.CA, Phone.NANP.US]

    case Enum.filter(modules, fn m -> m.match?(number) end) do
      [] -> {:error, "Not a valid phone number."}
      [mod] -> mod.build(number)
    end
  end

  def build!(number) do
    modules = [Phone.NANP.CA, Phone.NANP.US]

    case Enum.filter(modules, fn m -> m.match?(number) end) do
      [] -> raise ArgumentError, message: "Not a valid phone number."
      [mod] -> mod.build!(number)
    end
  end
end

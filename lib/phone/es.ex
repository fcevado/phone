defmodule Phone.ES do
  @doc """
    Telephone Numbers rules based in a government file called 
      "El Plan Nacional de Numeración - Guía práctica de usuario"
    
    Provincies and acronyms from ISO 3166-2:ES
  """

  use Helper.Country

  def regex, do: ~r/^(34)()(.{9})/
  def country, do: "Spain"
  def a2, do: "ES"
  def a3, do: "ESP"

  matcher(:modules, [
    Phone.ES.A,
    Phone.ES.AB,
    Phone.ES.AL,
    Phone.ES.AV,
    Phone.ES.B,
    Phone.ES.BA,
    Phone.ES.BI,
    Phone.ES.BU,
    Phone.ES.C,
    Phone.ES.CA,
    Phone.ES.CC,
    Phone.ES.CO,
    Phone.ES.CR,
    Phone.ES.CS,
    Phone.ES.CU,
    Phone.ES.GC,
    Phone.ES.GI,
    Phone.ES.GR,
    Phone.ES.GU,
    Phone.ES.H,
    Phone.ES.HU,
    Phone.ES.J,
    Phone.ES.L,
    Phone.ES.LE,
    Phone.ES.LO,
    Phone.ES.LU,
    Phone.ES.M,
    Phone.ES.MA,
    Phone.ES.MU,
    Phone.ES.NA,
    Phone.ES.O,
    Phone.ES.OR,
    Phone.ES.P,
    Phone.ES.PM,
    Phone.ES.PO,
    Phone.ES.S,
    Phone.ES.SA,
    Phone.ES.SE,
    Phone.ES.SG,
    Phone.ES.SO,
    Phone.ES.SS,
    Phone.ES.T,
    Phone.ES.TE,
    Phone.ES.TF,
    Phone.ES.TO,
    Phone.ES.V,
    Phone.ES.VA,
    Phone.ES.VI,
    Phone.ES.Z,
    Phone.ES.ZA,
  ])
end

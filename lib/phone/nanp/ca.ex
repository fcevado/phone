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

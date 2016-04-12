defmodule Phone.NANP.CA do
  use Helper.Country
  field :country, "Canada"
  field :a2, "CA"
  field :a3, "CAN"
  field :code, "1"
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

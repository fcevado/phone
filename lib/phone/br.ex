defmodule Phone.BR do
  use Helper.Country
  field :country, "Brazil"
  field :a2, "BR"
  field :a3, "BRA"
  field :modules, [
    Phone.BR.AC, Phone.BR.AL,
    Phone.BR.AM, Phone.BR.AP,
    Phone.BR.BA, Phone.BR.CE,
    Phone.BR.DF, Phone.BR.ES,
    Phone.BR.GO, Phone.BR.MA,
    Phone.BR.MT, Phone.BR.MS,
    Phone.BR.MG, Phone.BR.PA,
    Phone.BR.PB, Phone.BR.PE,
    Phone.BR.PI, Phone.BR.PR,
    Phone.BR.RJ, Phone.BR.RN,
    Phone.BR.RO, Phone.BR.RR,
    Phone.BR.RS, Phone.BR.SC,
    Phone.BR.SE, Phone.BR.SP,
    Phone.BR.TO
  ]
  match :modules
end

defmodule Phone.NANP.US.MI do
  use Helper.Area
  field :regex, ~r/^(1)(231|248|269|313|517|586|616|734|810|906|947|989)([2-9].{6})$/
  field :area_name, "Michigan"
  field :area_type, "state"
  field :area_abbreviation, "MI"
  builder
end

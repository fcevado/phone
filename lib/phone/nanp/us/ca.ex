defmodule Phone.NANP.US.CA do
  use Helper.Area
  field :regex, ~r/^(1)(209|213|310|323|408|415|510|530|559|562|619|626|650|661|707|714|760|805|818|831|858|909|916|925|949)([2-9].{6})$/
  field :area_name, "California"
  field :area_type, "state"
  field :area_abbreviation, "CA"
  builder
end

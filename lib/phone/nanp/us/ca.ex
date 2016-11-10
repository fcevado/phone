defmodule Phone.NANP.US.CA do
  use Helper.Area
  field :regex, ~r/^(1)(209|213|310|323|408|415|424|442|510|530|559|562|619|626|628|650|657|661|669|707|714|747|760|805|818|831|858|909|916|925|949|951)([2-9].{6})$/
  field :area_name, "California"
  field :area_type, "state"
  field :area_abbreviation, "CA"
  builder
end

defmodule Phone.NANP.CA.NS_PE do
  use Helper.Area
  field :regex, ~r/^(1)(902)([2-9].{6})/
  field :area_name, ["Nova Scotia","Prince Edward Island"]
  field :area_type, "provinces"
  field :area_abbreviation, ["NS","PE"]
  builder
end

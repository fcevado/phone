defmodule Phone.TG do
  use Helper.Country, match: :regex,
    number_prefix: "228"
  field :regex, ~r/^(228)()(.{8})/
  field :country, "Togo"
  field :a2, "TG"
  field :a3, "TGO"
end

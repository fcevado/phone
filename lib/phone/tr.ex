defmodule Phone.TR do
  use Helper.Country, match: :regex,
    number_prefix: "90"
  field :regex, ~r/^(90)(.{3})(.{7})/
  field :country, "Turkey"
  field :a2, "TR"
  field :a3, "TUR"
end

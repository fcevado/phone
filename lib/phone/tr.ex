defmodule Phone.TR do
  use Helper.Country
  field :regex, ~r/^(90)(.{3})(.{7})/
  field :country, "Turkey"
  field :a2, "TR"
  field :a3, "TUR"
  match :regex
end

defmodule Phone.CV do
  use Helper.Country, match: :regex
  field :regex, ~r/^(238)()(.{7})/
  field :country, "Cape Verde"
  field :a2, "CV"
  field :a3, "CPV"
end

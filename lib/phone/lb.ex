defmodule Phone.LB do
  use Helper.Country, match: :regex
  field :regex, ~r/^(961)(.{1,2})(.{6})/
  field :country, "Lebanon"
  field :a2, "LB"
  field :a3, "LBN"
end

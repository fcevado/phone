defmodule Phone.QA do
  use Helper.Country
  field :regex, ~r/^(974)()(.{8})/
  field :country, "Qatar"
  field :a2, "QA"
  field :a3, "QAT"
  match :regex
end

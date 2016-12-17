defmodule Phone.IE do
  use Helper.Country
  field :regex, ~r/^(353)(1|402|404|505|90|[2-9][1-9])(.{5,7})$/
  field :country, "Ireland"
  field :a2, "IE"
  field :a3, "IRL"
  match :regex
end

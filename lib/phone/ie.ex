defmodule Phone.IE do
  use Helper.Country, match: :regex
  field :regex, ~r/^(353)(..)(.{7})/
  field :country, "Ireland"
  field :a2, "IE"
  field :a3, "IRL"
end

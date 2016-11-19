defmodule Phone.IE do
  use Helper.Country, match: :regex,
    number_prefix: "353"
  field :regex, ~r/^(353)(..)(.{7})/
  field :country, "Ireland"
  field :a2, "IE"
  field :a3, "IRL"
end

defmodule Phone.ET do
  use Helper.Country, match: :regex,
    number_prefix: "251"
  field :regex, ~r/^(251)(..)(.{7})/
  field :country, "Ethiopia"
  field :a2, "ET"
  field :a3, "ETH"
end

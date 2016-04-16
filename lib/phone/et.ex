defmodule Phone.ET do
  use Helper.Country
  field :regex, ~r/^(251)(..)(.{7})/
  field :country, "Ethiopia"
  field :a2, "ET"
  field :a3, "ETH"
  match :regex
end

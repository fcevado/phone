defmodule Phone.SL do
  use Helper.Country
  field :regex, ~r/^(232)(..)(.{6})/
  field :country, "Sierra Leone"
  field :a2, "SL"
  field :a3, "SLE"
  match :regex
end

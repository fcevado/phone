defmodule Phone.MQ do
  use Helper.Country
  field :regex, ~r/^(596)([5|6]96)(.{6})/
  field :country, "Martinique"
  field :a2, "MQ"
  field :a3, "MTQ"
  match :regex
end

defmodule Phone.MQ do
  use Helper.Country, match: :regex,
    number_prefix: "596"
  field :regex, ~r/^(596)([5|6]96)(.{6})/
  field :country, "Martinique"
  field :a2, "MQ"
  field :a3, "MTQ"
end

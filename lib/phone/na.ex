defmodule Phone.NA do
  use Helper.Country, match: :regex,
    number_prefix: "264"
  field :regex, ~r/^(264)()(.+)/
  field :country, "Namibia"
  field :a2, "NA"
  field :a3, "NAM"
end

defmodule Phone.NA do
  use Helper.Country, match: :regex
  field :regex, ~r/^(264)()(.+)/
  field :country, "Namibia"
  field :a2, "NA"
  field :a3, "NAM"
end

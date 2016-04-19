defmodule Phone.NA do
  use Helper.Country
  field :regex, ~r/^(264)()(.+)/
  field :country, "Namibia"
  field :a2, "NA"
  field :a3, "NAM"
  match :regex
end

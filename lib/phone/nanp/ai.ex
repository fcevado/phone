defmodule Phone.NANP.AI do
  use Helper.Country
  field :regex, ~r/^(1)(264)([2-9].{6})/
  field :country, "Anguilla"
  field :a2, "AI"
  field :a3, "AIA"
  match :regex
end

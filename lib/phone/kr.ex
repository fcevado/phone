defmodule Phone.KR do
  use Helper.Country, match: :regex
  field :regex, ~r/^(82)(.{1,2})(.{7,8})/
  field :country, "South Korea"
  field :a2, "KR"
  field :a3, "KOR"
end

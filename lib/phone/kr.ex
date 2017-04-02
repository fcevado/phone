defmodule Phone.KR do
  use Helper.Country

  def regex, do: ~r/^(82)(.{1,2})(.{7,8})/
  def country, do: "South Korea"
  def a2, do: "KR"
  def a3, do: "KOR"

  matcher :regex, ["82"]
end

defmodule Phone.NA do
  use Helper.Country

  def regex, do: ~r/^(264)()(.+)/
  def country, do: "Namibia"
  def a2, do: "NA"
  def a3, do: "NAM"

  matcher :regex, ["264"]
end

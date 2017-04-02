defmodule Phone.IE do
  use Helper.Country

  def regex, do: ~r/^(353)(1|402|404|505|90|[2-9][1-9])(.{5,7})$/
  def country, do: "Ireland"
  def a2, do: "IE"
  def a3, do: "IRL"

  matcher :regex, ["353"]
end

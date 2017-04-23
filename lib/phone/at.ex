defmodule Phone.AT do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(43)()(.+)/
  def country, do: "Austria"
  def a2, do: "AT"
  def a3, do: "AUT"

  matcher :regex, ["43"]
end

defmodule Phone.UY do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(598)()(.+)/
  def country, do: "Uruguay"
  def a2, do: "UY"
  def a3, do: "URY"

  matcher(:regex, ["598"])
end

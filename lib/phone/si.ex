defmodule Phone.SI do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(386)()(.+)/
  def country, do: "Slovenia"
  def a2, do: "SI"
  def a3, do: "SVN"

  matcher(:regex, ["386"])
end

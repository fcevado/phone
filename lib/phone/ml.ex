defmodule Phone.ML do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(223)()(.{8})/
  def country, do: "Mali"
  def a2, do: "ML"
  def a3, do: "MLI"

  matcher(:regex, ["223"])
end

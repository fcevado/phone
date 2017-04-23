defmodule Phone.KW do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(965)()(.{8})/
  def country, do: "Kuwait"
  def a2, do: "KW"
  def a3, do: "KWT"

  matcher :regex, ["965"]
end

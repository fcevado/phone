defmodule Phone.QA do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(974)()(.{8})/
  def country, do: "Qatar"
  def a2, do: "QA"
  def a3, do: "QAT"

  matcher :regex, ["974"]
end

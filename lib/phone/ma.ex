defmodule Phone.MA do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(212)()(.{9})/
  def country, do: "Morocco"
  def a2, do: "MA"
  def a3, do: "MAR"

  matcher :regex, ["212"]
end

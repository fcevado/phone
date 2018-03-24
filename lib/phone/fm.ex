defmodule Phone.FM do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(691)()(.{7})/
  def country, do: "Micronesia"
  def a2, do: "FM"
  def a3, do: "FSM"

  matcher(:regex, ["691"])
end

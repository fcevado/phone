defmodule Phone.PW do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(680)()(.{7})/
  def country, do: "Palau"
  def a2, do: "PW"
  def a3, do: "PLW"

  matcher(:regex, ["680"])
end

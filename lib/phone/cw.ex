defmodule Phone.CW do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(599)(9)(.{7})/
  def country, do: "Curaçao"
  def a2, do: "CW"
  def a3, do: "CUW"

  matcher(:regex, ["5999"])
end

defmodule Phone.ET do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(251)(..)(.{7})/
  def country, do: "Ethiopia"
  def a2, do: "ET"
  def a3, do: "ETH"

  matcher :regex, ["251"]
end

defmodule Phone.ME do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(382)(..)(.{6})/
  def country, do: "Montenegro"
  def a2, do: "ME"
  def a3, do: "MNE"

  matcher :regex, ["382"]
end

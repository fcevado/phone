defmodule Phone.AF do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(93)(..)(.{7})/
  def country, do: "Afghanistan"
  def a2, do: "AF"
  def a3, do: "AFG"

  matcher :regex, ["93"]
end

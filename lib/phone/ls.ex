defmodule Phone.LS do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(266)(..)(.{6})/
  def country, do: "Lesotho"
  def a2, do: "LS"
  def a3, do: "LSO"

  matcher(:regex, ["266"])
end

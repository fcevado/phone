defmodule Phone.IE do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(353)(1|087|402|800|404|505|90|[2-9][1-9])(.{5,9})$/
  def country, do: "Ireland"
  def a2, do: "IE"
  def a3, do: "IRL"

  matcher(:regex, ["353"])
end

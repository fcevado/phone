defmodule Phone.NANP.AG do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(1)(268)([2-9].{6})$/
  def country, do: "Antigua and Barbuda"
  def a2, do: "AG"
  def a3, do: "ATG"

  matcher :regex, ["1268"]
end

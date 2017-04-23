defmodule Phone.MQ do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(596)([5|6]96)(.{6})/
  def country, do: "Martinique"
  def a2, do: "MQ"
  def a3, do: "MTQ"

  matcher :regex, ["596596", "596696"]
end

defmodule Phone.IQ do
  use Helper.Country

  def regex, do: ~r/^(964)()(.+)/
  def country, do: "Iraq"
  def a2, do: "IQ"
  def a3, do: "IRQ"

  matcher :regex, ["964"]
end

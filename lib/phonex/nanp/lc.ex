defmodule Phonex.NANP.LC do
  def valid?(number) do
    String.length(number) == 7
  end
  def builder(code, number) do
    unless valid?(number) do
      raise ArgumentError, message: "Not a valid phone number."
    end
    %{
      country: "Saint Lucia",
      code: "1-"<>code,
      number: number,
      a2: "LC",
      a3: "LCA"
    }
  end
end

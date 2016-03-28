defmodule Phonex.NANP.DM do
  def valid?(number) do
    String.length(number) == 7
  end
  def builder(code, number) do
    unless valid?(number) do
      raise ArgumentError, message: "Not a valid phone number."
    end
    %{
      country: "Dominica",
      code: "1-"<>code,
      number: number,
      a2: "DM",
      a3: "DMA"
    }
  end
end

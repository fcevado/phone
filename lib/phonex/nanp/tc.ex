defmodule Phonex.NANP.TC do
  def valid?(number) do
    String.length(number) == 7
  end
  def builder(code, number) do
    unless valid?(number) do
      raise ArgumentError, message: "Not a valid phone number."
    end
    %{
      country: "Turks and Caicos Islands",
      code: "1-"<>code,
      number: number,
      a2: "TC",
      a3: "TCA"
    }
  end
end

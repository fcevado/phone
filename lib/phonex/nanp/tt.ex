defmodule Phonex.NANP.TT do
  def valid?(number) do
    String.length(number) == 7
  end
  def builder(code, number) do
    unless valid?(number) do
      raise ArgumentError, message: "Not a valid phone number."
    end
    %{
      country: "Trinidad and Tobago",
      code: "1-"<>code,
      number: number,
      a2: "TT",
      a3: "TTO"
    }
  end
end

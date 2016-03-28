defmodule Phonex.NANP.BS do
  def valid?(number) do
    String.length(number) == 7
  end
  def builder(code, number) do
    unless valid?(number) do
      raise ArgumentError, message: "Not a valid phone number."
    end
    %{
      country: "Bahamas",
      code: "1-"<>code,
      number: number,
      a2: "BS",
      a3: "BHS"
    }
  end
end

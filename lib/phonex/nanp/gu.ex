defmodule Phonex.NANP.GU do
  def valid?(number) do
    String.length(number) == 7
  end
  def builder(code, number) do
    unless valid?(number) do
      raise ArgumentError, message: "Not a valid phone number."
    end
    %{
      country: "Guam",
      code: "1-"<>code,
      number: number,
      a2: "GU",
      a3: "GUM"
    }
  end
end

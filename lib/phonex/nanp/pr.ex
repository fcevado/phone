defmodule Phonex.NANP.PR do
  def valid?(number) do
    String.length(number) == 7
  end
  def builder(code, number) do
    unless valid?(number) do
      raise ArgumentError, message: "Not a valid phone number."
    end
    %{
      country: "Puerto Rico",
      code: "1-"<>code,
      number: number,
      a2: "PR",
      a3: "PRI"
    }
  end
end

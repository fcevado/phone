defmodule Phonex.NANP.MP do
  def valid?(number) do
    String.length(number) == 7
  end
  def builder(code, number) do
    unless valid?(number) do
      raise ArgumentError, message: "Not a valid phone number."
    end
    %{
      country: "Northern Mariana Islands",
      code: "1-"<>code,
      number: number,
      a2: "MP",
      a3: "MNP"
    }
  end
end

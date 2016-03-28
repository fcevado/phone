defmodule Phone.NANP.KN do
  def valid?(number) do
    String.length(number) == 7
  end
  def builder(code, number) do
    unless valid?(number) do
      raise ArgumentError, message: "Not a valid phone number."
    end
    %{
      country: "Saint Kitts and Nevis",
      code: "1-"<>code,
      number: number,
      a2: "KN",
      a3: "KNA"
    }
  end
end

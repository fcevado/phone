defmodule Phonex.NANP.AI do
  def valid?(number) do
    String.lenght(number) == 7
  end
  def builder(code, number) do
    unless valid?(number) do
      raise ArgumentError, message: "Not a valid phone number."
    end
    %{
      country: "Anguilla",
      code: "1-"<>code,
      number: number,
      a2: "AI",
      a3: "AIA"
    }
  end
end

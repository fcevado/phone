defmodule Phonex.NANP.AS do
  def valid?(number) do
    String.length(number) == 7
  end
  def builder(code, number) do
    unless valid?(number) do
      raise ArgumentError, message: "Not a valid phone number."
    end
    %{
      country: "American Samoa",
      code: "1-"<>code,
      number: number,
      a2: "AS",
      a3: "ASM"
    }
  end
end

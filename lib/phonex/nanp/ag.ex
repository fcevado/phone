defmodule Phonex.NANP.AG do
  def valid?(number) do
    String.length(number) == 7
  end
  def builder(code, number) do
    unless valid?(number) do
      raise ArgumentError, message: "Not a valid phone number."
    end
    %{
      country: "Antigua and Barbuda",
      code: "1-"<>code,
      number: number,
      a2: "AG",
      a3: "ATG"
    }
  end
end

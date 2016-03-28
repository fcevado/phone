defmodule Phone.NANP.GD do
  def valid?(number) do
    String.length(number) == 7
  end
  def builder(code, number) do
    unless valid?(number) do
      raise ArgumentError, message: "Not a valid phone number."
    end
    %{
      country: "Grenada",
      code: "1-"<>code,
      number: number,
      a2: "GD",
      a3: "GRD"
    }
  end
end

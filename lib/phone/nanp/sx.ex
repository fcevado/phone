defmodule Phone.NANP.SX do
  def valid?(number) do
    String.length(number) == 7
  end
  def builder(code, number) do
    unless valid?(number) do
      raise ArgumentError, message: "Not a valid phone number."
    end
    %{
      country: "Sint Maarten",
      code: "1-"<>code,
      number: number,
      a2: "SX",
      a3: "SXM"
    }
  end
end

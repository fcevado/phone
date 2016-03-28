defmodule Phone.NANP.BB do
  def valid?(number) do
    String.length(number) == 7
  end
  def builder(code, number) do
    unless valid?(number) do
      raise ArgumentError, message: "Not a valid phone number."
    end
    %{
      country: "Barbados",
      code: "1-"<>code,
      number: number,
      a2: "BB",
      a3: "BRB"
    }
  end
end

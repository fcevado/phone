defmodule Phone.NANP.DO do
  def valid?(number) do
    String.length(number) == 7
  end
  def builder(code, number) do
    unless valid?(number) do
      raise ArgumentError, message: "Not a valid phone number."
    end
    %{
      country: "Dominican Republic",
      code: "1-"<>code,
      number: number,
      a2: "DO",
      a3: "DOM"
    }
  end
end

defmodule Phone.NANP.MS do
  def valid?(number) do
    String.length(number) == 7
  end
  def builder(code, number) do
    unless valid?(number) do
      raise ArgumentError, message: "Not a valid phone number."
    end
    %{
      country: "Montserrat",
      code: "1-"<>code,
      number: number,
      a2: "MS",
      a3: "MSR"
    }
  end
end

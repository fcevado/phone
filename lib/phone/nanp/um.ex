defmodule Phone.NANP.UM do
  def valid?(number) do
    String.length(number) == 7
  end
  def builder(code, number) do
    unless valid?(number) do
      raise ArgumentError, message: "Not a valid phone number."
    end
    %{
      country: "United States Minor Outlying Islands",
      code: "1-"<>code,
      number: number,
      a2: "UM",
      a3: "UMI"
    }
  end
end

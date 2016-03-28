defmodule Phone.NANP.VC do
  def valid?(number) do
    String.length(number) == 7
  end
  def builder(code, number) do
    unless valid?(number) do
      raise ArgumentError, message: "Not a valid phone number."
    end
    %{
      country: "Saint Vicent and the Grenadines",
      code: "1-"<>code,
      number: number,
      a2: "VC",
      a3: "VCT"
    }
  end
end

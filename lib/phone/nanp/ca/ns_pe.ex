defmodule Phone.NANP.CA.NS_PE do
  @regex ~r/^(902)([2-9].+)/
  @provinces ["Nova Scotia","Prince Edward Island"]
  @abbreviations ["NS","PE"]

  def match?(number) do
    Regex.match?(@regex,number) and String.length(number) == 10
  end

  def build(number) do
    case match?(number) do
      false -> {:error, "Not a valid number."}
      true -> {:ok, builder(number)}
    end
  end

  def builder(number) do
    [[_, code, number]] = Regex.scan(@regex,number)

    %{
      country: Phone.NANP.CA.country,
      a2: Phone.NANP.CA.a2,
      a3: Phone.NANP.CA.a3,
      code: 1,
      area_code: code,
      provinces: @provinces,
      provinces_abbreviations: @abbreviations
    }
  end

  def provinces do
    @provinces
  end

  def abbreviations do
    @abbreviations
  end
end

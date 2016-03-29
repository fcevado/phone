defmodule Phone.NANP.CA.NL do
  @regex ~r/^(709)([2-9].+)/
  @province "Newfoundland and Labrador"
  @abbreviation "NL"

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
      province: @province,
      province_abbreviation: @abbreviation
    }
  end

  def province do
    @province
  end

  def abbreviation do
    @abbreviation
  end
end

defmodule Phone.NANP.CA.MB do
  @regex ~r/^(204|431)([2-9].+)/
  @province "Manitoba"
  @abbreviation "MB"

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
    @abbreviaton
  end
end

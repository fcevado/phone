defmodule Phone.NANP.CA.Territory do
  @regex ~r/^(867)([2-9].+)/
  @territories ["Northwest Territories", "Nunavut", "Yukon"]
  @abbreviations ["NT","NU","YT"]

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
      territories: @territories,
      territories_abbreviations: @abbreviations
    }
  end

  def territories do
    @territories
  end

  def abbreviations do
    @abbreviaton
  end
end

defmodule Phone.NANP.US.DC do
  @regex ~r/^(202)([2-9].+)/
  @district "Washington, D.C."
  @abbreviation "DC"

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
      country: Phone.NANP.US.country,
      a2: Phone.NANP.US.a2,
      a3: Phone.NANP.US.a3,
      code: 1,
      area_code: code,
      district: @district,
      district_abbreviation: @abbreviation
    }
  end

  def district do
    @district
  end

  def abbreviation do
    @abbreviation
  end
end

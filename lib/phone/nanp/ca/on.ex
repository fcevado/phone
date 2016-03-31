defmodule Phone.NANP.CA.ON do
  @regex ~r/^(226|249|289|343|365|416|437|529|613|647|705|807|905)([2-9].+)/
  @province "Ontario"
  @abbreviation "ON"

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
      code: "1",
      number: number,
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

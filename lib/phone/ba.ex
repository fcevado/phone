defmodule Phone.BA do
  @regex ~r/^387(..)(.+)/
  @country "Bosnia and Herzegovina"
  @a2 "BA"
  @a3 "BIH"

  def match?(number) do
    Regex.match?(@regex,number) and String.length(number) == 11
  end

  def build(number) do
    case match?(number) do
      false -> {:error, "Not a valid number."}
      true -> {:ok, builder(number)}
    end
  end

  def builder(number) do
    [[_, code, number]] = Regex.scan(@regex, number)

    %{
      code: "387",
      area_code: code,
      number: number,
      country: @country,
      a2: @a2,
      a3: @a3
    }
  end

  def country do
    @country
  end

  def a2 do
    @a2
  end

  def a3 do
    @a3
  end

  def abbreviation do
    %{a2: @a2, a3: @a3}
  end
end

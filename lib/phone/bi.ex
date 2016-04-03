defmodule Phone.BI do
  @regex ~r/^257(.+)/
  @country "Burundi"
  @a2 "BI"
  @a3 "BDI"

  def match?(number) do
    Regex.match?(@regex,number) and String.length(number) == 11
  end:

  def build(number) do
    case match?(number) do
      false -> {:error, "Not a valid number."}
      true -> {:ok, builder(number)}
    end
  end

  def builder(number) do
    [[_, number]] = Regex.scan(@regex, number)

    %{
      code: "257",
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

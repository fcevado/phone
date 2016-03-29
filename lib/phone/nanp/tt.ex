defmodule Phone.NANP.TT do
  @regex ~r/^(868)([2-9].+)/
  @country "Trinidad and Tobago"
  @a2 "TT"
  @a3 "TTO"

  def match?(number) do
    Regex.match?(@regex, number) and String.length(number) == 10
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
      country: @country,
      code: "1-"<>code,
      number: number,
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

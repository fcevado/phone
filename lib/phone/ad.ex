defmodule Phone.AD do
  @regex ~r/^376(.+)/
  @country "Andorra"
  @a2 "AD"
  @a3 "AND"

  def match?(number) do
    Regex.match?(@regex,number) and (String.length(number) == 9 or String.length(number) == 12)
  end

  def build(number) do
    case match?(number) do
      false -> {:error, "Not a valid number."}
      true -> {:ok, builder(number)}
    end
  end

  def builder(number) do
    [[_, number]] = Regex.scan(@regex, number)

    %{
      code: "376",
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

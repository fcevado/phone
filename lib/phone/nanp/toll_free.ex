defmodule Phone.NANP.TollFree do
  @regex ~r/^(800|844|855|866|877|888)([2-9].+)/
  @tax "toll-free number"

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
      tax: @tax,
      code: "1",
      number: "("<>code<>")"<>number
    }
  end

  def tax do
    @tax
  end
end

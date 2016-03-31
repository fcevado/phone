defmodule Phone.NANP.US.MA do
  @regex ~r/^(339|351|413|508|617|774|781|857|978)([2-9].+)/
  @state "Massachusetts"
  @abbreviation "MA"

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
      code: "1",
      number: number,
      area_code: code,
      state: @state,
      state_abbreviation: @abbreviation
    }
  end

  def state do
    @state
  end

  def abbreviation do
    @abbreviation
  end
end

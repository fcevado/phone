defmodule Phone.NANP.US.NY do
  @regex ~r/^(212|315|347|516|585|607|631|646|716|718|845|914|917|929)([2-9].+)/
  @state "New York"
  @abbreviation "NY"

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

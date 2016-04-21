defmodule Phone do
  def parse(number) when is_bitstring(number) do
    number = clear(number)
    number = try do
      number |> String.to_integer |> Integer.to_string
    rescue
      _ -> ""
    end
    Phone.Countries.build(number)
  end

  def parse(number) when is_integer(number) do
    number = Integer.to_string(number)
    parse(number)
  end

  def parse(number) do
    {:error, "Not a valid parameter, only string or integer."}
  end

  defp clear(number) when is_bitstring(number) do
    remove = String.graphemes("+()- ")
    number |> String.graphemes
    |> Enum.filter(fn(n)-> ! Enum.any?(remove,fn(r)-> r == n end) end)
    |> Enum.join("")
  end
end

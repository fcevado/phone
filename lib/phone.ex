defmodule Phone do
  @moduledoc ~S"""
  Phone is a real telephone number parser, that will help you get useful information from numbers.


  ## How to use

  Very simple to use:
      iex> Phone.parse("555112345678")
      {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "12345678"}}
  """

  @doc """
  Parses a string and returns a map with information about that number.

  ```
    iex> Phone.parse("555112345678")
    {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "12345678"}}

    iex> Phone.parse("+55(51)1234-5678")
    {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "12345678"}}

    iex> Phone.parse("55 51 1234-5678")
    {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "12345678"}}

    iex> Phone.parse(555112345678)
    {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "12345678"}}

  ```
  """
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

  def parse(_) do
    {:error, "Not a valid parameter, only string or integer."}
  end

  defp clear(number) when is_bitstring(number) do
    remove = String.graphemes("+()- ")
    number |> String.graphemes
    |> Enum.filter(fn(n)-> ! Enum.any?(remove,fn(r)-> r == n end) end)
    |> Enum.join("")
  end
end

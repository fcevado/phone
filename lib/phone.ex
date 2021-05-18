defmodule Phone do
  @moduledoc ~S"""
  Phone is a real telephone number parser, that will help you get useful information from numbers.

  ## How to use

  Very simple to use:
      iex> Phone.parse("555132345678")
      {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "32345678", area_abbreviation: "RS", area_type: "state", area_name: "Rio Grande do Sul"}}
  """

  import Helper.Parser

  @doc """
  Parses a string or integer and returns a map with information about that number.

  ```
    iex> Phone.parse("555132345678")
    {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "32345678", area_abbreviation: "RS", area_type: "state", area_name: "Rio Grande do Sul"}}

    iex> Phone.parse("+55(51)3234-5678")
    {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "32345678", area_abbreviation: "RS", area_type: "state", area_name: "Rio Grande do Sul"}}

    iex> Phone.parse("55 51 3234-5678")
    {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "32345678", area_abbreviation: "RS", area_type: "state", area_name: "Rio Grande do Sul"}}

    iex> Phone.parse(555132345678)
    {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "32345678", area_abbreviation: "RS", area_type: "state", area_name: "Rio Grande do Sul"}}

  ```
  """
  @spec parse(String.t()) :: {:ok, Map.t()}
  def parse(number) when is_bitstring(number) do
    number
    |> prepare_number
    |> Phone.Countries.build()
  end

  @spec parse(pos_integer) :: {:ok, Map.t()}
  def parse(number) when is_integer(number) do
    number = Integer.to_string(number)
    parse(number)
  end

  def parse(_) do
    {:error, "Not a valid parameter, only string or integer."}
  end

  @doc false
  defp prepare_number(number) do
    number = clear(number)

    try do
      number |> String.to_integer() |> Integer.to_string()
    rescue
      _ -> ""
    end
  end

  @doc false
  defp clear(number) when is_bitstring(number) do
    number
    |> String.graphemes()
    |> Enum.filter(fn n -> valid_char(n) end)
    |> Enum.join("")
  end

  @doc false
  defp valid_char("+"), do: false
  defp valid_char("("), do: false
  defp valid_char(")"), do: false
  defp valid_char("-"), do: false
  defp valid_char(" "), do: false
  defp valid_char(_), do: true

  @doc """
  Same as `parse/1`, except it raises on error.

  ```
  iex> Phone.parse!("555132345678")
  %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "32345678", area_abbreviation: "RS", area_type: "state", area_name: "Rio Grande do Sul"}

  iex> Phone.parse!("+55(51)3234-5678")
  %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "32345678", area_abbreviation: "RS", area_type: "state", area_name: "Rio Grande do Sul"}

  iex> Phone.parse!("55 51 3234-5678")
  %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "32345678", area_abbreviation: "RS", area_type: "state", area_name: "Rio Grande do Sul"}

  iex> Phone.parse!(555132345678)
  %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "32345678", area_abbreviation: "RS", area_type: "state", area_name: "Rio Grande do Sul"}

  ```
  """
  @spec parse!(String.t()) :: Map.t()
  def parse!(number) when is_bitstring(number) do
    number = clear(number)

    number =
      try do
        number |> String.to_integer() |> Integer.to_string()
      rescue
        _ -> ""
      end

    Phone.Countries.build!(number)
  end

  @spec parse!(pos_integer) :: Map.t()
  def parse!(number) when is_integer(number) do
    number = Integer.to_string(number)
    parse!(number)
  end

  def parse!(_) do
    raise ArgumentError, message: "Not a valid parameter, only string or integer."
  end

  @spec parse(String.t(), Atom.t()) :: {:ok, Map.t()}
  @spec parse(pos_integer, Atom.t()) :: {:ok, Map.t()}
  @spec parse!(String.t(), Atom.t()) :: Map.t()
  @spec parse!(pos_integer, Atom.t()) :: Map.t()
  country_parser()

  @doc """
  Returns `true` if the number can be parsed, otherwise returns `false`.

  ```
  iex> Phone.valid?("555132345678")
  true

  iex> Phone.valid?("+55(51)3234-5678")
  true

  iex> Phone.valid?("55 51 3234-5678")
  true

  iex> Phone.valid?(555132345678)
  true

  ```
  """
  @spec parse(String.t()) :: boolean
  def valid?(number) when is_bitstring(number) do
    number
    |> prepare_number
    |> Phone.Countries.match?()
  end

  @spec parse(pos_integer) :: boolean
  def valid?(number) when is_integer(number) do
    number
    |> to_string
    |> valid?
  end
end

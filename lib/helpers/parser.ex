defmodule Phone.Helper.Parser do
  @moduledoc false

  defmacro parser(country, code) do
    quote do
      @doc """
      Same as `parse(number)` but the number doesn't have the international code, instead you specify country as a atom with two-letters code.

      ```
      iex> Phone.parse(:br,"5112345678")
      {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "12345678"}}

      iex> Phone.parse(:br, "(51)1234-5678")
      {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "12345678"}}

      iex> Phone.parse(:br, "51 1234-5678")
      {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "12345678"}}

      iex> Phone.parse(:br, 5112345678)
      {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "12345678"}}

      ```
      """
      @spec parse(Atom.t, String.t) :: {:ok, Map.t}
      def parse(unquote(country), number) when is_bitstring(number) do
        parse(unquote(code) <> number)
      end

      @spec parse(Atom.t, pos_integer) :: {:ok, Map.t}
      def parse(unquote(country), number) when is_integer(number) do
        number = Integer.to_string(number)
        parse(unquote(code) <> number)
      end

      def parse(unquote(country), _) do
        parse(unquote(country))
      end
    end
  end
end

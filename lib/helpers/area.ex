defmodule Helper.Area do
  @moduledoc false
  defmacro __using__(_) do
    quote do
      import Helper.Area
      @moduledoc false
    end
  end

  defmacro field(name, value) do
    quote do
      defp unquote(name)(), do: unquote(value)
    end
  end

  defmacro builder do
    quote do
      def match?(number) do
        Regex.match?(regex, number)
      end

      def builder(number) do
        [_ | country] = Module.split(__MODULE__) |> Enum.reverse
        country = Enum.reverse(country) |> Module.concat

        [[_, code, area, number]] = Regex.scan(regex,number)

        %{
          country: country.country,
          a2: country.a2,
          a3: country.a3,
          international_code: code,
          number: number,
          area_code: area,
          area_name: area_name,
          area_type: area_type,
          area_abbreviation: area_abbreviation
        }
      end

      def build(number) do
        if match?(number) do
          {:ok, builder(number)}
        else
          {:error, "Not a valid phone number."}
        end
      end
    end
  end
end

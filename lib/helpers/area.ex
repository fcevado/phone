defmodule Helper.Area do
  @moduledoc false
  defmacro __using__(_) do
    quote do
      @moduledoc false

      import Helper.Area

      def regex, do: ""
      def area_name, do: ""
      def area_type, do: ""
      def area_abbreviation, do: ""

      defoverridable [regex: 0, area_name: 0, area_type: 0, area_abbreviation: 0]

      def builder(number) do
        [_ | country] =
          __MODULE__
          |> Module.split
          |> Enum.reverse
        country =
          country
          |> Enum.reverse
          |> Module.concat

        [[_, code, area, number]] = Regex.scan(regex(), number)

        %{
          country: country.country(),
          a2: country.a2(),
          a3: country.a3(),
          international_code: code,
          number: number,
          area_code: area,
          area_name: area_name(),
          area_type: area_type(),
          area_abbreviation: area_abbreviation()
        }
      end
    end
  end

  defmacro matcher(codes) do
    [quote do
      def codes, do: unquote(codes)
    end]
    ++
    Enum.map(codes,
      fn code ->
        quote do
          def match?(unquote(code) <> _ = number) do
            Regex.match?(regex(), number)
          end
        end
      end)
    ++
    [quote do
      def match?(_number), do: false
    end]
    ++
    Enum.map(codes,
      fn code ->
        quote do
          def build(unquote(code) <> _ = number) do
            if match?(number) do
              {:ok, builder(number)}
            else
              {:error, "Not a valid phone number."}
            end
          end
        end
      end)
    ++
    [quote do
      def build(_number), do: {:error, "Not a valid phone number."}
    end]
    ++
    Enum.map(codes,
      fn code ->
        quote do
          def build!(unquote(code) <> _ = number) do
            if match?(number) do
              builder(number)
            else
              raise ArgumentError, message: "Not a valid phone number."
            end
          end
        end
      end)
    ++
    [quote do
      def build!(_number), do: raise ArgumentError, message: "Not a valid phone number."
    end]
  end
end

defmodule Helper.Country do
  @moduledoc false
  defmacro __using__(_) do
    quote do
      import Helper.Country

      def regex, do: ""
      def country, do: ""
      def a2, do: ""
      def a3, do: ""

      defoverridable [regex: 0, country: 0, a2: 0, a3: 0]
    end
  end

  defmacro matcher(:regex, codes) do
    [quote do
      def codes, do: unquote(codes)

      def builder(number) do
        [[_, code, area, number]] = Regex.scan(regex(), number)

        %{
          country: country(),
          a2: a2(),
          a3: a3(),
          international_code: code,
          area_code: area,
          number: number
        }
      end
    end]
    ++
    Enum.map(codes,
      fn code ->
        quote do
          def match?(unquote(code) <> _ = number) do
            Regex.match?(regex(), number)
          end

          def build(unquote(code) <> _ = number) do
            if match?(number) do
              {:ok, builder(number)}
            else
              {:error, "Not a valid phone number."}
            end
          end

          def build!(unquote(code) <> _ = number) do
            if match?(number) do
              builder(number)
            else
              raise ArgumentError, "Not a valid phone number."
            end
          end
        end
      end)
    ++
    [quote do
      def match?(_number), do: false

      def build!(_number), do: raise ArgumentError, "Not a valid phone number."

      def build(_number), do: {:error, "Not a valid phone number."}
    end]
  end

  defmacro matcher(:modules, modules) do
    modules = Enum.map(modules, &(Macro.expand(&1, __CALLER__)))

    all_codes = Enum.reduce(modules, [], fn m, acc -> acc ++ m.codes end)

    [quote do
      def codes, do: unquote(all_codes)
    end]
    ++
    Enum.map(modules,
      fn module ->
        Enum.map(module.codes,
          fn code ->
            quote do
              def match?(unquote(code) <> _ = number) do
                unquote(module).match?(number)
              end

              def build(unquote(code) <> _ = number) do
                unquote(module).build(number)
              end

              def build!(unquote(code) <> _ = number) do
                unquote(module).build!(number)
              end
            end
          end)
      end)
    ++
    [quote do
      def match?(_number), do: false

      def build(_number), do: {:error, "Not a valid phone number."}

      def build!(_number), do: raise ArgumentError, message: "Not a valid phone number."
    end]
  end

  defmacro matcher(_, _),
    do: raise ArgumentError, "You can only match against :regex or :modules"
end

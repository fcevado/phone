defmodule Helper.Country do
  @moduledoc false
  defmacro __using__(opts \\ []) do
    match_type = Keyword.get(opts, :match)
    number_prefix = Keyword.get(opts, :number_prefix, "")
    build_matcher(match_type, number_prefix)
  end

  defmacro field(name, value) do
    quote do
      def unquote(name)(), do: unquote(value)
    end
  end

  defp regex_matcher(number_prefix) do
    quote do
      import Helper.Country
      @moduledoc false

      def match?(unquote(number_prefix) <> _ = number) do
        Regex.match?(regex, number)
      end
      def match?(_), do: false

      def builder(number) do
        [[_, code, area, number]] = Regex.scan(regex,number)

        %{
          country: country,
          a2: a2,
          a3: a3,
          international_code: code,
          area_code: area,
          number: number
        }
      end

      def build(number) do
        if match?(number) do
          {:ok, builder(number)}
        else
          {:error, "Not a valid phone number."}
        end
      end

      def build!(number) do
        if match?(number) do
          builder(number)
        else
          raise ArgumentError, "Not a valid phone number."
        end
      end
    end
  end

  defp modules_matcher do
    quote do
      import Helper.Country
      @moduledoc false

      def match?(number) do
        ms = Enum.filter(modules, fn m -> m.match?(number) end)
        length(ms) > 0
      end

      def build(number) do
        if match?(number) do
          [module] = Enum.filter(modules, fn m -> m.match?(number) end)
          module.build(number)
        else
          {:error, "Not a valid phone number."}
        end
      end

      def build!(number) do
        if match?(number) do
          [module] = Enum.filter(modules, fn m -> m.match?(number) end)
          module.build!(number)
        else
          raise ArgumentError, message: "Not a valid phone number."
        end
      end
    end
  end

  defp build_matcher(matcher, number_prefix) do
    case matcher do
      :regex -> regex_matcher(number_prefix)
      :modules -> modules_matcher
      true ->
        raise ArgumentError, "You can only match against :regex or :modules, passed #{inspect matcher}"
    end
  end
end

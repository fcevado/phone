defmodule Phone.Helper.Parser do
  @moduledoc false

  defmacro parser(country, code) do
    quote do
      def parse(unquote(country), number) when is_bitstring(number) do
        parse(unquote(code) <> number)
      end

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

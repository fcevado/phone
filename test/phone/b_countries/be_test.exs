defmodule Phone.BETest do
  use ExUnit.Case, async: true

  main_module = Phone.BE

  Enum.map(main_module.codes,
    fn code ->
      test "#{inspect main_module} parses area code #{code}" do
        assert Phone.valid?(unquote("#{code}555555555"))
        assert {:ok, parsed} = Phone.parse(unquote("#{code}555555555"))

        assert parsed.country == unquote(main_module).country
        assert parsed.a2 == unquote(main_module).a2
        assert parsed.a3 == unquote(main_module).a3
      end

      test "#{inspect main_module} cant parse wrong number with code #{code}" do
        refute Phone.valid?(unquote("#{code}555"))
        assert {:error, _} = Phone.parse(unquote("#{code}555"))

        refute unquote(main_module).match?(unquote("#{code}555"))
        assert {:error, _} = unquote(main_module).build(unquote("#{code}555"))

        assert_raise ArgumentError,
        "Not a valid phone number.",
        fn -> unquote(main_module).build!(unquote("#{code}555")) end
      end
    end)
end

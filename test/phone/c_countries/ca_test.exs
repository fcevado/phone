defmodule Phone.CATest do
  use ExUnit.Case, async: true

  main_module = Phone.NANP.CA

  all_modules = [
    Phone.NANP.CA.AB,
    Phone.NANP.CA.BC,
    Phone.NANP.CA.MB,
    Phone.NANP.CA.NB,
    Phone.NANP.CA.NL,
    Phone.NANP.CA.NSAndPE,
    Phone.NANP.CA.ON,
    Phone.NANP.CA.QC,
    Phone.NANP.CA.SK,
    Phone.NANP.CA.Territory
  ]

  Enum.map(main_module.codes, fn code ->
    test "#{inspect(main_module)} parses area code #{code}" do
      assert Phone.valid?(unquote("#{code}5551234"))
      assert {:ok, parsed} = Phone.parse(unquote("#{code}5551234"))

      assert parsed.country == unquote(main_module).country
      assert parsed.a2 == unquote(main_module).a2
      assert parsed.a3 == unquote(main_module).a3
    end

    test "#{inspect(main_module)} cant parse wrong number with code #{code}" do
      refute Phone.valid?(unquote("#{code}555123"))
      assert {:error, _} = Phone.parse(unquote("#{code}555123"))

      refute unquote(main_module).match?(unquote("#{code}555123"))
      assert {:error, _} = unquote(main_module).build(unquote("#{code}555123"))

      assert_raise ArgumentError, "Not a valid phone number.", fn ->
        unquote(main_module).build!(unquote("#{code}555123"))
      end
    end
  end)

  Enum.map(all_modules, fn module ->
    Enum.map(module.codes, fn code ->
      test "#{inspect(module)} parses area code #{code}" do
        assert Phone.valid?(unquote("#{code}5551234"))
        assert {:ok, parsed} = Phone.parse(unquote("#{code}5551234"))

        assert parsed.country == unquote(main_module).country
        assert parsed.a2 == unquote(main_module).a2
        assert parsed.a3 == unquote(main_module).a3
        assert parsed.area_type == unquote(module).area_type
        assert parsed.area_name == unquote(module).area_name
        assert parsed.area_abbreviation == unquote(module).area_abbreviation
      end

      test "#{inspect(module)} cant parse wrong number with code #{code}" do
        refute Phone.valid?(unquote("#{code}555123"))
        assert {:error, _} = Phone.parse(unquote("#{code}555123"))

        refute unquote(module).match?(unquote("#{code}555123"))
        assert {:error, _} = unquote(module).build(unquote("#{code}555123"))

        assert_raise ArgumentError, "Not a valid phone number.", fn ->
          unquote(module).build!(unquote("#{code}555123"))
        end
      end
    end)
  end)
end

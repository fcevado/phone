defmodule Phone.BRTest do
  use ExUnit.Case, async: true

  main_module = Phone.BR

  all_modules = [
    Phone.BR.AC,
    Phone.BR.AL,
    Phone.BR.AM,
    Phone.BR.AP,
    Phone.BR.BA,
    Phone.BR.CE,
    Phone.BR.DF,
    Phone.BR.ES,
    Phone.BR.GO,
    Phone.BR.MA,
    Phone.BR.MT,
    Phone.BR.MS,
    Phone.BR.MG,
    Phone.BR.PA,
    Phone.BR.PB,
    Phone.BR.PE,
    Phone.BR.PI,
    Phone.BR.PR,
    Phone.BR.RJ,
    Phone.BR.RN,
    Phone.BR.RO,
    Phone.BR.RR,
    Phone.BR.RS,
    Phone.BR.SC,
    Phone.BR.SE,
    Phone.BR.SP,
    Phone.BR.TO
  ]

  Enum.map(main_module.codes, fn code ->
    test "#{inspect(main_module)} parses area code #{code}" do
      assert Phone.valid?(unquote("#{code}55555555"))
      assert {:ok, parsed} = Phone.parse(unquote("#{code}55555555"))

      assert parsed.country == unquote(main_module).country
      assert parsed.a2 == unquote(main_module).a2
      assert parsed.a3 == unquote(main_module).a3
    end

    test "#{inspect(main_module)} cant parse wrong number with code #{code}" do
      refute Phone.valid?(unquote("#{code}5555555"))
      assert {:error, _} = Phone.parse(unquote("#{code}555555"))

      refute unquote(main_module).match?(unquote("#{code}5555555"))
      assert {:error, _} = unquote(main_module).build(unquote("#{code}555555"))

      assert_raise ArgumentError, "Not a valid phone number.", fn ->
        unquote(main_module).build!(unquote("#{code}555555"))
      end
    end
  end)

  Enum.map(all_modules, fn module ->
    Enum.map(module.codes, fn code ->
      test "#{inspect(module)} parses area code #{code}" do
        assert Phone.valid?(unquote("#{code}55555555"))
        assert {:ok, parsed} = Phone.parse(unquote("#{code}55555555"))

        assert parsed.country == unquote(main_module).country
        assert parsed.a2 == unquote(main_module).a2
        assert parsed.a3 == unquote(main_module).a3
        assert parsed.area_type == unquote(module).area_type
        assert parsed.area_name == unquote(module).area_name
        assert parsed.area_abbreviation == unquote(module).area_abbreviation
      end

      test "#{inspect(module)} cant parse wrong number with code #{code}" do
        refute Phone.valid?(unquote("#{code}555555"))
        assert {:error, _} = Phone.parse(unquote("#{code}555555"))

        refute unquote(module).match?(unquote("#{code}555555"))
        assert {:error, _} = unquote(module).build(unquote("#{code}555555"))

        assert_raise ArgumentError, "Not a valid phone number.", fn ->
          unquote(module).build!(unquote("#{code}555555"))
        end
      end
    end)
  end)

  describe "Brazilian toll-free numbers" do
    test "it can recognize Brazilian toll-free numbers" do
      sample_number = "+558002345678"
      assert Phone.valid?(sample_number)
      assert {:ok, parsed} = Phone.parse(sample_number)

      assert parsed.country == Phone.BR.TollFree.country
      assert parsed.a2 == Phone.BR.TollFree.a2
      assert parsed.a3 == Phone.BR.TollFree.a3
    end

    test "it won't accept a Brazilian toll-free number that seems implausibly long" do
      bad_number = "+55800234567890"
      refute Phone.valid?(bad_number)
      assert {:error, _} = Phone.parse(bad_number)

      assert_raise ArgumentError, "Not a valid phone number.", fn ->
        Phone.BR.TollFree.build!(bad_number)
      end
    end
  end
end

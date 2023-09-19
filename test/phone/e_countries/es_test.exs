defmodule Phone.ESTest do
  use ExUnit.Case, async: true

  main_module = Phone.ES

  all_modules = [
    Phone.ES.A,
    Phone.ES.AB,
    Phone.ES.AL,
    Phone.ES.AV,
    Phone.ES.B,
    Phone.ES.BA,
    Phone.ES.BI,
    Phone.ES.BU,
    Phone.ES.C,
    Phone.ES.CA,
    Phone.ES.CC,
    Phone.ES.CO,
    Phone.ES.CR,
    Phone.ES.CS,
    Phone.ES.CU,
    Phone.ES.GC,
    Phone.ES.GI,
    Phone.ES.GR,
    Phone.ES.GU,
    Phone.ES.H,
    Phone.ES.HU,
    Phone.ES.J,
    Phone.ES.L,
    Phone.ES.LE,
    Phone.ES.LO,
    Phone.ES.LU,
    Phone.ES.M,
    Phone.ES.MA,
    Phone.ES.MU,
    Phone.ES.NA,
    Phone.ES.O,
    Phone.ES.OR,
    Phone.ES.P,
    Phone.ES.PM,
    Phone.ES.PO,
    Phone.ES.S,
    Phone.ES.SA,
    Phone.ES.SE,
    Phone.ES.SG,
    Phone.ES.SO,
    Phone.ES.SS,
    Phone.ES.T,
    Phone.ES.TE,
    Phone.ES.TF,
    Phone.ES.TO,
    Phone.ES.V,
    Phone.ES.VA,
    Phone.ES.VI,
    Phone.ES.Z,
    Phone.ES.ZA
  ]

  Enum.map(main_module.codes, fn code ->
    test "#{inspect(main_module)} parses area code #{code}" do
      assert Phone.valid?(unquote("#{code}555555"))
      assert {:ok, parsed} = Phone.parse(unquote("#{code}555555"))

      assert parsed.country == unquote(main_module).country
      assert parsed.a2 == unquote(main_module).a2
      assert parsed.a3 == unquote(main_module).a3
    end

    test "#{inspect(main_module)} cant parse wrong number with code #{code}" do
      refute Phone.valid?(unquote("#{code}555"))
      assert {:error, _} = Phone.parse(unquote("#{code}555"))

      refute unquote(main_module).match?(unquote("#{code}555"))
      assert {:error, _} = unquote(main_module).build(unquote("#{code}555"))

      assert_raise ArgumentError, "Not a valid phone number.", fn ->
        unquote(main_module).build!(unquote("#{code}555"))
      end
    end
  end)

  Enum.map(all_modules, fn module ->
    Enum.map(module.codes, fn code ->
      test "#{inspect(module)} parses area code #{code}" do
        assert Phone.valid?(unquote("#{code}555555"))
        assert {:ok, parsed} = Phone.parse(unquote("#{code}555555"))

        assert parsed.country == unquote(main_module).country
        assert parsed.a2 == unquote(main_module).a2
        assert parsed.a3 == unquote(main_module).a3
        assert parsed.area_type == unquote(module).area_type
        assert parsed.area_name == unquote(module).area_name
        assert parsed.area_abbreviation == unquote(module).area_abbreviation
      end

      test "#{inspect(module)} cant parse wrong number with code #{code}" do
        refute Phone.valid?(unquote("#{code}555"))
        assert {:error, _} = Phone.parse(unquote("#{code}555"))

        refute unquote(module).match?(unquote("#{code}555"))
        assert {:error, _} = unquote(module).build(unquote("#{code}555"))

        assert_raise ArgumentError, "Not a valid phone number.", fn ->
          unquote(module).build!(unquote("#{code}555"))
        end
      end
    end)
  end)

  describe "Spanish mobile numbers" do
    module = Phone.ES.Mobile

    Enum.map(module.codes, fn code ->
      test "#{inspect(module)} parses area code #{code}" do
        assert Phone.valid?(unquote("#{code}5555555"))
        assert {:ok, parsed} = Phone.parse(unquote("#{code}5555555"))

        assert parsed.country == Phone.ES.Mobile.country()
        assert parsed.a2 == Phone.ES.Mobile.a2()
        assert parsed.a3 == Phone.ES.Mobile.a3()
      end

      test "#{inspect(module)} cant parse wrong number with code #{code}" do
        refute Phone.valid?(unquote("#{code}555"))
        assert {:error, _} = Phone.parse(unquote("#{code}555"))

        refute unquote(module).match?(unquote("#{code}555"))
        assert {:error, _} = unquote(module).build(unquote("#{code}555"))

        assert_raise ArgumentError, "Not a valid phone number.", fn ->
          unquote(module).build!(unquote("#{code}555"))
        end
      end
    end)
  end

  describe "Spanish intelligent numbers" do
    test "it can recognize Spanish intelligent numbers" do
      sample_number = "+34701023456"
      assert Phone.valid?(sample_number)
      assert {:ok, parsed} = Phone.parse(sample_number)

      assert parsed.country == Phone.ES.IntelligentNumbers.country()
      assert parsed.a2 == Phone.ES.IntelligentNumbers.a2()
      assert parsed.a3 == Phone.ES.IntelligentNumbers.a3()
    end

    test "it won't accept a Spanish intelligent numbers that seems implausibly long" do
      bad_number = "+34701023456789"
      refute Phone.valid?(bad_number)
      assert {:error, _} = Phone.parse(bad_number)

      assert_raise ArgumentError, "Not a valid phone number.", fn ->
        Phone.ES.IntelligentNumbers.build!(bad_number)
      end
    end
  end
end

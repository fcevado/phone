defmodule Phone.USTest do
  use ExUnit.Case, async: true

  main_module = Phone.NANP.US

  all_modules = [Phone.NANP.US.AK, Phone.NANP.US.AL, Phone.NANP.US.AR, Phone.NANP.US.AZ,
                 Phone.NANP.US.CA, Phone.NANP.US.CO, Phone.NANP.US.CT, Phone.NANP.US.DC,
                 Phone.NANP.US.DE, Phone.NANP.US.FL, Phone.NANP.US.GA, Phone.NANP.US.HI,
                 Phone.NANP.US.IA, Phone.NANP.US.ID, Phone.NANP.US.IL, Phone.NANP.US.IN,
                 Phone.NANP.US.KS, Phone.NANP.US.KY, Phone.NANP.US.LA, Phone.NANP.US.MA,
                 Phone.NANP.US.MD, Phone.NANP.US.ME, Phone.NANP.US.MI, Phone.NANP.US.MN,
                 Phone.NANP.US.MO, Phone.NANP.US.MS, Phone.NANP.US.MT, Phone.NANP.US.NC,
                 Phone.NANP.US.ND, Phone.NANP.US.NE, Phone.NANP.US.NH, Phone.NANP.US.NJ,
                 Phone.NANP.US.NM, Phone.NANP.US.NV, Phone.NANP.US.NY, Phone.NANP.US.OH,
                 Phone.NANP.US.OK, Phone.NANP.US.OR, Phone.NANP.US.PA, Phone.NANP.US.RI,
                 Phone.NANP.US.SC, Phone.NANP.US.SD, Phone.NANP.US.TN, Phone.NANP.US.TX,
                 Phone.NANP.US.UT, Phone.NANP.US.VT, Phone.NANP.US.VA, Phone.NANP.US.WA,
                 Phone.NANP.US.WI, Phone.NANP.US.WV, Phone.NANP.US.WY]

  Enum.map(main_module.codes,
    fn code ->
      test "#{inspect main_module} parses area code #{code}" do
        assert Phone.valid?(unquote("#{code}5551234"))
        assert {:ok, parsed} = Phone.parse(unquote("#{code}5551234"))

        assert parsed.country == unquote(main_module).country
        assert parsed.a2 == unquote(main_module).a2
        assert parsed.a3 == unquote(main_module).a3
      end

      test "#{inspect main_module} cant parse wrong number with code #{code}" do
        refute Phone.valid?(unquote("#{code}555123"))
        assert {:error, _} = Phone.parse(unquote("#{code}555123"))

        refute unquote(main_module).match?(unquote("#{code}555123"))
        assert {:error, _} = unquote(main_module).build(unquote("#{code}555123"))

        assert_raise ArgumentError,
        "Not a valid phone number.",
        fn -> unquote(main_module).build!(unquote("#{code}555123")) end
      end
    end)

  Enum.map(all_modules,
    fn module ->
      Enum.map(module.codes,
        fn code ->
          test "#{inspect module} parses area code #{code}" do
            assert Phone.valid?(unquote("#{code}5551234"))
            assert {:ok, parsed} = Phone.parse(unquote("#{code}5551234"))

            assert parsed.country == unquote(main_module).country
            assert parsed.a2 == unquote(main_module).a2
            assert parsed.a3 == unquote(main_module).a3
            assert parsed.area_type == unquote(module).area_type
            assert parsed.area_name == unquote(module).area_name
            assert parsed.area_abbreviation == unquote(module).area_abbreviation
          end

          test "#{inspect module} cant parse wrong number with code #{code}" do
            refute Phone.valid?(unquote("#{code}555123"))
            assert {:error, _} = Phone.parse(unquote("#{code}555123"))

            refute unquote(module).match?(unquote("#{code}555123"))
            assert {:error, _} = unquote(module).build(unquote("#{code}555123"))

            assert_raise ArgumentError,
            "Not a valid phone number.",
            fn -> unquote(module).build!(unquote("#{code}555123")) end
          end
        end)
    end)
end

defmodule Phone.CountriesTest do
  use ExUnit.Case, async: true

  main_module = Phone.Countries
  all_modules = [Phone.AD, Phone.AE, Phone.AF, Phone.AL, Phone.AM, Phone.AO,
                 Phone.AR, Phone.AT, Phone.AU, Phone.AW, Phone.AZ, Phone.BA,
                 Phone.BD, Phone.BE, Phone.BG, Phone.BH, Phone.BI, Phone.BJ,
                 Phone.BN, Phone.BO, Phone.BR, Phone.BT, Phone.BW, Phone.BY,
                 Phone.BZ, Phone.CD, Phone.CF, Phone.CG, Phone.CH, Phone.CI,
                 Phone.CK, Phone.CL, Phone.CM, Phone.CN, Phone.CO, Phone.CR,
                 Phone.CU, Phone.CV, Phone.CW, Phone.CY, Phone.CZ, Phone.DE,
                 Phone.DJ, Phone.DK, Phone.DZ, Phone.EC, Phone.EE, Phone.EG,
                 Phone.ER, Phone.ES, Phone.ET, Phone.FI, Phone.FJ, Phone.FM,
                 Phone.FO, Phone.FR, Phone.GA, Phone.GB, Phone.GE, Phone.GF,
                 Phone.GH, Phone.GI, Phone.GL, Phone.GM, Phone.GN, Phone.GQ,
                 Phone.GR, Phone.GT, Phone.GW, Phone.GY, Phone.HK, Phone.HN,
                 Phone.HR, Phone.HT, Phone.HU, Phone.ID, Phone.IE, Phone.IL,
                 Phone.IN, Phone.IO, Phone.IQ, Phone.IR, Phone.IS, Phone.IT,
                 Phone.JO, Phone.JP, Phone.KE, Phone.KG, Phone.KH, Phone.KI,
                 Phone.KM, Phone.KP, Phone.KR, Phone.KW, Phone.KZ, Phone.LA,
                 Phone.LB, Phone.LI, Phone.LK, Phone.LR, Phone.LS, Phone.LT,
                 Phone.LU, Phone.LV, Phone.LY, Phone.MA, Phone.MC, Phone.MD,
                 Phone.ME, Phone.MG, Phone.MH, Phone.MK, Phone.ML, Phone.MM,
                 Phone.MN, Phone.MO, Phone.MQ, Phone.MR, Phone.MT, Phone.MU,
                 Phone.MV, Phone.MW, Phone.MX, Phone.MY, Phone.MZ, Phone.NA,
                 Phone.NC, Phone.NE, Phone.NG, Phone.NI, Phone.NL, Phone.NO,
                 Phone.NP, Phone.NR, Phone.NU, Phone.NZ, Phone.OM, Phone.PA,
                 Phone.PE, Phone.PF, Phone.PG, Phone.PH, Phone.PK, Phone.PL,
                 Phone.PM, Phone.PS, Phone.PT, Phone.PW, Phone.PY, Phone.QA,
                 Phone.RO, Phone.RS, Phone.RU, Phone.RW, Phone.SA, Phone.SB,
                 Phone.SC, Phone.SD, Phone.SE, Phone.SG, Phone.SH, Phone.SI,
                 Phone.SK, Phone.SL, Phone.SM, Phone.SN, Phone.SO, Phone.SR,
                 Phone.SS, Phone.ST, Phone.SV, Phone.SY, Phone.SZ, Phone.TD,
                 Phone.TG, Phone.TH, Phone.TJ, Phone.TK, Phone.TL, Phone.TM,
                 Phone.TN, Phone.TO, Phone.TR, Phone.TV, Phone.TW, Phone.TZ,
                 Phone.UA, Phone.UG, Phone.UY, Phone.UZ, Phone.VE, Phone.VN,
                 Phone.VU, Phone.WF, Phone.WS, Phone.YE, Phone.ZA, Phone.ZM,
                 Phone.ZW, Phone.NANP]

  Enum.map(main_module.codes,
    fn code ->
      test "#{inspect main_module} cant parse wrong number with code #{code}" do
        refute Phone.valid?(unquote("#{code}"))
        assert {:error, _} = Phone.parse(unquote("#{code}"))

        refute unquote(main_module).match?(unquote("#{code}"))
        assert {:error, _} = unquote(main_module).build(unquote("#{code}"))

        assert_raise ArgumentError,
        "Not a valid phone number.",
        fn -> unquote(main_module).build!(unquote("#{code}")) end
      end
    end)

  Enum.map(all_modules,
    fn module ->
      Enum.map(module.codes,
        fn code ->
          test "#{inspect module} cant parse wrong number with code #{code}" do
            refute Phone.valid?(unquote("#{code}"))
            assert {:error, _} = Phone.parse(unquote("#{code}"))

            refute unquote(module).match?(unquote("#{code}"))
            assert {:error, _} = unquote(module).build(unquote("#{code}"))

            assert_raise ArgumentError,
            "Not a valid phone number.",
            fn -> unquote(module).build!(unquote("#{code}")) end
          end
        end)
    end)
end

defmodule Phone.NANPTest do
  use ExUnit.Case, async: true

  all_modules = [
    Phone.NANP.AS, Phone.NANP.AI, Phone.NANP.AG, Phone.NANP.BS,
    Phone.NANP.BB, Phone.NANP.BM, Phone.NANP.CA, Phone.NANP.DM,
    Phone.NANP.DO, Phone.NANP.GD, Phone.NANP.GU, Phone.NANP.JM,
    Phone.NANP.KN, Phone.NANP.KY, Phone.NANP.LC, Phone.NANP.MP,
    Phone.NANP.MS, Phone.NANP.PR, Phone.NANP.SX, Phone.NANP.TC,
    Phone.NANP.TT, Phone.NANP.US, Phone.NANP.VC, Phone.NANP.VG,
    Phone.NANP.VI, Phone.NANP.TollFree
  ]

  Enum.map(all_modules,
    fn module ->
      Enum.map(module.codes,
        fn code ->
          test "#{inspect module} parses area code #{code}" do
            assert Phone.valid?(unquote("#{code}5551234"))
            assert {:ok, parsed} = Phone.parse(unquote("#{code}5551234"))

            assert parsed.country == unquote(module).country
            assert parsed.a2 == unquote(module).a2
            assert parsed.a3 == unquote(module).a3
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

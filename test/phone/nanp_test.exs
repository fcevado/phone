defmodule Phone.NanpTest do
  use ExUnit.Case, async: true

  @external_resource area_codes_path = Path.join([__DIR__, "..", "support", "nanp-area-codes.csv"])

  for line <- File.stream!(area_codes_path, [], :line) do
    [area_code, state_abbreviation] = line |> String.strip |> String.split(",")

    test "correctly parses NANP area code #{area_code} (#{state_abbreviation})" do
      assert {:ok, result} = Phone.parse(unquote("1#{area_code}5551234"))

      case result do
        %{a2: "US"} ->
          assert result.area_abbreviation == unquote(state_abbreviation)
        _ ->
          true
      end
    end
  end
end

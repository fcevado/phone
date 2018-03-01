defmodule Phone.RUTest do
  use ExUnit.Case, async: true


  test "valid number may start with 8" do
    assert Phone.valid?("89216163937")
    assert Phone.valid?("79216163937")

    assert {:ok, %{international_code: "7"}} = Phone.parse("79216163937")
    assert {:ok, %{international_code: "7"}} = Phone.parse("89216163937")
  end
end
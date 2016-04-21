defmodule PhoneTest do
  use ExUnit.Case, async: true
  doctest Phone
  @right_assertion {:ok, %{
      a2: "BR",
      a3: "BRA",
      country: "Brazil",
      international_code: "55",
      area_code: "51",
      number: "12345678"
    }}
  @wrong_type {:error, "Not a valid parameter, only string or integer."}
  @wrong_assertion {:error, "Not a valid phone number."}

  test "parse integer" do
    assert Phone.parse(555112345678) == @right_assertion
  end

  test "parse not valid integer" do
    assert Phone.parse(5532) == @wrong_assertion
  end

  test "parse string with letters" do
    assert Phone.parse("abc") == @wrong_assertion
  end

  test "parse string with numbers and letters" do
    assert Phone.parse("555112345678abc") == @wrong_assertion
  end

  test "parse string with formatted number" do
    assert Phone.parse("+55 51 1234 5678") == @right_assertion
    assert Phone.parse("+55(51)1234-5678") == @right_assertion
    assert Phone.parse("+555112345678") == @right_assertion
  end

  test "parse other types" do
    assert Phone.parse(:test) == @wrong_type
    assert Phone.parse({55,51,1234,5678}) == @wrong_type
    assert Phone.parse([62,51,1234,5678]) == @wrong_type
    assert Phone.parse(fn(t)-> t end) == @wrong_type
  end
end

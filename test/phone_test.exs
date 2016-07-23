defmodule PhoneTest do
  use ExUnit.Case, async: true
  doctest Phone
  @right_assertion {:ok, %{
      a2: "HR",
      a3: "HRV",
      country: "Croatia",
      international_code: "385",
      area_code: "",
      number: "12345678"
    }}
  @right_return %{
    a2: "HR",
    a3: "HRV",
    country: "Croatia",
    international_code: "385",
    area_code: "",
    number: "12345678"
  }
  @wrong_type {:error, "Not a valid parameter, only string or integer."}
  @wrong_assertion {:error, "Not a valid phone number."}

  test "parse integer" do
    assert Phone.parse(38512345678) == @right_assertion
    assert Phone.parse!(38512345678) == @right_return
  end

  test "parse not valid integer" do
    assert Phone.parse(5532) == @wrong_assertion
    assert_raise ArgumentError,
      "Not a valid phone number.", fn -> Phone.parse!(5532) end
  end

  test "parse string with letters" do
    assert Phone.parse("abc") == @wrong_assertion
    assert_raise ArgumentError,
      "Not a valid phone number.", fn -> Phone.parse!("abc") end
  end

  test "parse string with numbers and letters" do
    assert Phone.parse("555112345678abc") == @wrong_assertion
    assert_raise ArgumentError,
      "Not a valid phone number.", fn -> Phone.parse!("555112345678abc") end
  end

  test "parse string with formatted number" do
    assert Phone.parse("+385 1234 5678") == @right_assertion
    assert Phone.parse!("+385 1234 5678") == @right_return

    assert Phone.parse("+385 1234-5678") == @right_assertion
    assert Phone.parse!("+385 1234-5678") == @right_return

    assert Phone.parse("+38512345678") == @right_assertion
    assert Phone.parse!("+38512345678") == @right_return
  end

  test "parse other types" do
    assert Phone.parse(:test) == @wrong_type
    assert_raise ArgumentError,
      "Not a valid parameter, only string or integer.", fn -> Phone.parse!(:test) end

    assert Phone.parse({55,51,1234,5678}) == @wrong_type
    assert_raise ArgumentError,
      "Not a valid parameter, only string or integer.", fn -> Phone.parse!({55,51,1234,5678}) end

    assert Phone.parse([55,51,1234,5678]) == @wrong_type
    assert_raise ArgumentError,
      "Not a valid parameter, only string or integer.", fn -> Phone.parse!([55,51,1234,5678]) end

    assert Phone.parse(fn(t)-> t end) == @wrong_type
    assert_raise ArgumentError,
      "Not a valid parameter, only string or integer.", fn -> Phone.parse!(fn(t)-> t end) end
  end
end

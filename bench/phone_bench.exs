defmodule PhoneBench do
  use Benchfella

  @nanp_phone_number "12536301234"
  @andorra_phone_number "376123456"
  @zimbabwe_phone_number "2634333224"

  bench "Phone.parse/1 with an NANP phone number" do
    {:ok, _result} = Phone.parse(@nanp_phone_number)
  end

  bench "Phone.parse/1 with an NANP phone number error" do
    {:error, _result} = Phone.parse("1253630123")
  end

  bench "Phone.parse/1 with an Andorra phone number" do
    {:ok, _result} = Phone.parse(@andorra_phone_number)
  end

  bench "Phone.parse/1 with an Andorra phone number error" do
    {:error, _result} = Phone.parse("37612345")
  end

  bench "Phone.parse/1 with a Zimbabwe phone number" do
    {:ok, _result} = Phone.parse(@zimbabwe_phone_number)
  end

  bench "Phone.parse/1 with a Zimbabwe phone number error" do
    {:error, _result} = Phone.parse("263")
  end
end

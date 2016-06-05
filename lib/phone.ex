defmodule Phone do
  @moduledoc ~S"""
  Phone is a real telephone number parser, that will help you get useful information from numbers.


  ## How to use

  Very simple to use:
      iex> Phone.parse("555112345678")
      {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "12345678"}}
  """

  import Phone.Helper.Parser

  @doc """
  Parses a string or integer and returns a map with information about that number.

  ```
    iex> Phone.parse("555112345678")
    {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "12345678"}}

    iex> Phone.parse("+55(51)1234-5678")
    {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "12345678"}}

    iex> Phone.parse("55 51 1234-5678")
    {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "12345678"}}

    iex> Phone.parse(555112345678)
    {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "12345678"}}

  ```
  """
  @spec parse(String.t) :: {:ok, Map.t}
  def parse(number) when is_bitstring(number) do
    number = clear(number)
    number = try do
      number |> String.to_integer |> Integer.to_string
    rescue
      _ -> ""
    end
    Phone.Countries.build(number)
  end

  @spec parse(pos_integer) :: {:ok, Map.t}
  def parse(number) when is_integer(number) do
    number = Integer.to_string(number)
    parse(number)
  end

  def parse(_) do
    {:error, "Not a valid parameter, only string or integer."}
  end

  defp clear(number) when is_bitstring(number) do
    remove = String.graphemes("+()- ")

    number
    |> String.graphemes
    |> Enum.filter(fn(n)-> ! Enum.any?(remove,fn(r)-> r == n end) end)
    |> Enum.join("")
  end

  @doc """
  Same as `parse(number)` but the number doesn't have the international code, instead you specify country as a atom with two-letters code.

  ```
  iex> Phone.parse(:br, "5112345678")
  {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "12345678"}}

  iex> Phone.parse(:br, "(51)1234-5678")
  {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "12345678"}}

  iex> Phone.parse(:br, "51 1234-5678")
  {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "12345678"}}

  iex> Phone.parse(:br, 5112345678)
  {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "12345678"}}

  ```
  """
  @spec parse(Atom.t, String.t) :: {:ok, Map.t}
  @spec parse(Atom.t, pos_integer) :: {:ok, Map.t}
  parser :ad, "376"
  parser :ae, "971"
  parser :af, "93"
  parser :al, "355"
  parser :am, "374"
  parser :ao, "244"
  parser :ar, "54"
  parser :at, "43"
  parser :aw, "297"
  parser :az, "994"

  parser :ba, "387"
  parser :bd, "880"
  parser :be, "32"
  parser :bg, "359"
  parser :bh, "973"
  parser :bi, "257"
  parser :bj, "229"
  parser :bn, "673"
  parser :bo, "591"
  parser :br, "55"
  parser :bt, "975"
  parser :bw, "267"
  parser :by, "375"
  parser :bz, "501"

  parser :cd, "243"
  parser :cf, "236"
  parser :cg, "242"
  parser :ch, "41"
  parser :ci, "225"
  parser :ck, "682"
  parser :cl, "56"
  parser :cm, "237"
  parser :cn, "86"
  parser :co, "57"
  parser :cr, "506"
  parser :cu, "53"
  parser :cv, "238"
  parser :cw, "599"
  parser :cy, "357"
  parser :cz, "420"

  parser :de, "49"
  parser :dj, "253"
  parser :dk, "45"
  parser :dz, "213"

  parser :ec, "593"
  parser :ee, "372"
  parser :eg, "20"
  parser :er, "291"
  parser :es, "34"
  parser :et, "251"

  parser :fi, "358"
  parser :fj, "679"
  parser :fm, "691"
  parser :fo, "298"
  parser :fr, "33"

  parser :ga, "241"
  parser :gb, "44"
  parser :ge, "995"
  parser :gf, "594"
  parser :gh, "233"
  parser :gi, "350"
  parser :gl, "299"
  parser :gm, "220"
  parser :gn, "224"
  parser :gq, "240"
  parser :gt, "502"
  parser :gw, "245"
  parser :gy, "592"

  parser :gr, "30"
  parser :uk, "30"

  parser :hk, "852"
  parser :hn, "504"
  parser :hr, "385"
  parser :ht, "509"
  parser :hu, "36"

  parser :id, "62"
  parser :ie, "353"
  parser :il, "972"
  parser :in, "91"
  parser :io, "246"
  parser :iq, "964"
  parser :ir, "98"
  parser :is, "353"
  parser :it, "39"

  parser :jo, "962"
  parser :jp, "81"

  parser :ke, "254"
  parser :kg, "996"
  parser :kh, "855"
  parser :ki, "686"
  parser :km, "269"
  parser :kp, "850"
  parser :kr, "82"
  parser :kw, "965"
  parser :kz, "7"

  parser :la, "856"
  parser :lb, "961"
  parser :li, "423"
  parser :lk, "94"
  parser :lr, "231"
  parser :ls, "266"
  parser :lt, "370"
  parser :lu, "352"
  parser :lv, "371"
  parser :ly, "218"
end

defmodule Helper.Parser do
  @moduledoc false

  defmacro parser(country, code) do
    quote do

      @doc """
      Same as `parse/1` but the number doesn't have the international code, instead you specify country as an atom with two-letters code.

      For NANP countries you can use the atom `:nanp` or two-letter codes for any country in NANP.

      For United Kingdom is possible to use the more known acronym `:uk` or the official two-letter code `:gb`.

      ```
      iex> Phone.parse("5132345678", :br)
      {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "32345678", area_abbreviation: "RS", area_type: "state", area_name: "Rio Grande do Sul"}}

      iex> Phone.parse("(51)3234-5678", :br)
      {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "32345678", area_abbreviation: "RS", area_type: "state", area_name: "Rio Grande do Sul"}}

      iex> Phone.parse("51 3234-5678", :br)
      {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "32345678", area_abbreviation: "RS", area_type: "state", area_name: "Rio Grande do Sul"}}

      iex> Phone.parse(5132345678, :br)
      {:ok, %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "32345678", area_abbreviation: "RS", area_type: "state", area_name: "Rio Grande do Sul"}}

      ```
      """
      def parse(number, unquote(country)) when is_bitstring(number) do
        parse(unquote(code) <> number)
      end

      def parse(number, unquote(country)) when is_integer(number) do
        number = Integer.to_string(number)
        parse(unquote(code) <> number)
      end

      def parse(_, unquote(country)) do
        parse(unquote(country))
      end

      @doc """
      Same as `parse/2`, except it raises on error.

      ```
      iex> Phone.parse!("5132345678", :br)
      %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "32345678", area_abbreviation: "RS", area_type: "state", area_name: "Rio Grande do Sul"}

      iex> Phone.parse!("(51)3234-5678", :br)
      %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "32345678", area_abbreviation: "RS", area_type: "state", area_name: "Rio Grande do Sul"}

      iex> Phone.parse!("51 3234-5678", :br)
      %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "32345678", area_abbreviation: "RS", area_type: "state", area_name: "Rio Grande do Sul"}

      iex> Phone.parse!(5132345678, :br)
      %{a2: "BR", a3: "BRA", country: "Brazil", international_code: "55", area_code: "51", number: "32345678", area_abbreviation: "RS", area_type: "state", area_name: "Rio Grande do Sul"}

      ```
      """
      def parse!(number, unquote(country)) when is_bitstring(number) do
        parse!(unquote(code) <> number)
      end

      def parse!(number, unquote(country)) when is_integer(number) do
        number = Integer.to_string(number)
        parse!(unquote(code) <> number)
      end

      def parse!(_, unquote(country)) do
        parse!(unquote(country))
      end
    end
  end


  defmacro country_parser do
    quote do
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

        parser :ma, "212"
        parser :mc, "377"
        parser :md, "373"
        parser :me, "382"
        parser :mg, "261"
        parser :mh, "692"
        parser :mk, "389"
        parser :ml, "223"
        parser :mm, "95"
        parser :mn, "976"
        parser :mo, "853"
        parser :mq, "596"
        parser :mr, "222"
        parser :mt, "356"
        parser :mu, "230"
        parser :mv, "960"
        parser :mw, "265"
        parser :mx, "52"
        parser :my, "60"
        parser :mz, "258"

        parser :nanp, "1"
        parser :ag, "1"
        parser :ai, "1"
        parser :as, "1"
        parser :bb, "1"
        parser :bm, "1"
        parser :bs, "1"
        parser :ca, "1"
        parser :dm, "1"
        parser :do, "1"
        parser :gd, "1"
        parser :gu, "1"
        parser :jm, "1"
        parser :kn, "1"
        parser :ky, "1"
        parser :lc, "1"
        parser :mp, "1"
        parser :ms, "1"
        parser :pr, "1"
        parser :sx, "1"
        parser :tc, "1"
        parser :tt, "1"
        parser :us, "1"
        parser :vc, "1"
        parser :vg, "1"
        parser :vi, "1"

        parser :na, "264"
        parser :nc, "687"
        parser :ne, "227"
        parser :ng, "234"
        parser :ni, "505"
        parser :nl, "31"
        parser :no, "47"
        parser :np, "977"
        parser :nr, "674"
        parser :nu, "683"
        parser :nz, "64"

        parser :om, "968"

        parser :pa, "507"
        parser :pe, "51"
        parser :pf, "689"
        parser :pg, "675"
        parser :ph, "63"
        parser :pk, "92"
        parser :pl, "48"
        parser :pm, "508"
        parser :ps, "970"
        parser :pt, "351"
        parser :pw, "680"
        parser :py, "595"

        parser :qa, "974"

        parser :ro, "40"
        parser :rs, "381"
        parser :ru, "7"
        parser :rw, "250"

        parser :sa, "966"
        parser :sb, "677"
        parser :sc, "248"
        parser :sd, "249"
        parser :se, "46"
        parser :sg, "65"
        parser :sh, "290"
        parser :si, "386"
        parser :sk, "421"
        parser :sl, "232"
        parser :sm, "378"
        parser :sn, "221"
        parser :so, "252"
        parser :sr, "597"
        parser :ss, "211"
        parser :st, "239"
        parser :sv, "503"
        parser :sy, "963"
        parser :sz, "268"

        parser :td, "235"
        parser :tg, "228"
        parser :th, "66"
        parser :tj, "992"
        parser :tk, "690"
        parser :tl, "670"
        parser :tm, "993"
        parser :tn, "216"
        parser :to, "676"
        parser :tr, "90"
        parser :tv, "688"
        parser :tw, "886"
        parser :tz, "255"

        parser :ua, "380"
        parser :ug, "256"
        parser :uy, "598"
        parser :uz, "998"

        parser :ve, "58"
        parser :vn, "84"
        parser :vu, "678"

        parser :wf, "681"
        parser :ws, "685"

        parser :ye, "967"

        parser :za, "27"
        parser :zm, "260"
        parser :zw, "263"
    end
  end
end

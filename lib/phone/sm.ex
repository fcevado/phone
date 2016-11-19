defmodule Phone.SM do
  use Helper.Country, match: :regex,
    number_prefix: "378"
  field :regex, ~r/^(378)(0549)(.{6})/
  field :country, "San Marino"
  field :a2, "SM"
  field :a3, "SMR"
end

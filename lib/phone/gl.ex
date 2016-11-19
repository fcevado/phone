defmodule Phone.GL do
  use Helper.Country, match: :regex,
    number_prefix: "299"
  field :regex, ~r/^(299)(..)(.{4})/
  field :country, "Greenland"
  field :a2, "GL"
  field :a3, "GRL"
end

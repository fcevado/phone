defmodule Phone.GL do
  use Helper.Country, match: :regex
  field :regex, ~r/^(299)(..)(.{4})/
  field :country, "Greenland"
  field :a2, "GL"
  field :a3, "GRL"
end

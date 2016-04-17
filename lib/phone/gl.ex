defmodule Phone.GL do
  use Helper.Country
  field :regex, ~r/^(299)(..)(.{4})/
  field :country, "Greenland"
  field :a2, "GL"
  field :a3, "GRL"
  match :regex
end

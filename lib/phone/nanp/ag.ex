defmodule Phone.NANP.AG do
  use Helper.Country, match: :regex,
    number_prefix: "1"
  field :regex, ~r/^(1)(268)([2-9].{6})$/
  field :country, "Antigua and Barbuda"
  field :a2, "AG"
  field :a3, "ATG"
end

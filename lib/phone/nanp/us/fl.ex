defmodule Phone.NANP.US.FL do
  use Helper.Area
  field :regex, ~r/^(1)(239|305|321|352|386|407|561|727|754|772|786|813|850|863|904|941|954)([2-9].{6})$/
  field :area_name, "Florida"
  field :area_type, "state"
  field :area_abbreviation, "FL"
  builder()
end

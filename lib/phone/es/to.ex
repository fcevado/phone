defmodule Phone.ES.TO do
  @moduledoc false

  use Helper.Area

  def regex, do: ~r/^(34)(925|825)(.{6})/
  def area_name, do: "Toledo"
  def area_type, do: "province"
  def area_abbreviation, do: "TO"

  matcher(["34925", "34825"])
end

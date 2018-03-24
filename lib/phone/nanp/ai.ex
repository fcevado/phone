defmodule Phone.NANP.AI do
  @moduledoc false

  use Helper.Country

  def regex, do: ~r/^(1)(264)([2-9].{6})$/
  def country, do: "Anguilla"
  def a2, do: "AI"
  def a3, do: "AIA"

  matcher(:regex, ["1264"])
end

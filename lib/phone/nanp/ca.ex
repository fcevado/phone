defmodule Phone.NANP.CA do
  @country "Canada"
  @a2 "CA"
  @a3 "CAN"

  def match?(number) do
  end

  def country do
    @country
  end

  def a2 do
    @a2
  end

  def a3 do
    @a3
  end

  def abbreviation do
    %{a2: @a2, a3: @a3}
  end
end

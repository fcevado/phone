defmodule Phonex do
  def parse("+"<>number) do
    Phonex.Countries.match(number)
  end

  def parse(number) do
    if is_integer(number) do
      number = Integer.to_string(number)
    end
    Phonex.Countries.match(number)
  end

end

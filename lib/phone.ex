defmodule Phone do
  def parse("+"<>number) do
    Phone.Countries.match(number)
  end

  def parse(number) do
    if is_integer(number) do
      number = Integer.to_string(number)
    end
    Phone.Countries.match(number)
  end

end

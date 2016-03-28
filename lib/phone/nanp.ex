defmodule Phone.NANP do
  @nanp [
    %{regex: ~r/^(684)(.+)/ , module: Phone.NANP.AS},
    %{regex: ~r/^(264)(.+)/, module: Phone.NANP.AI},
    %{regex: ~r/^(268)(.+)/ , module: Phone.NANP.AG},
    %{regex: ~r/^(242)(.+)/ , module: Phone.NANP.BS},
    %{regex: ~r/^(246)(.+)/ , module: Phone.NANP.BB},
    %{regex: ~r/^(441)(.+)/ , module: Phone.NANP.BM},
    %{regex: ~r/^(345)(.+)/ , module: Phone.NANP.KY},
    %{regex: ~r/^(767)(.+)/ , module: Phone.NANP.DM},
    %{regex: ~r/^(8[0|2|4]9)(.+)/ , module: Phone.NANP.DO},
    %{regex: ~r/^(473.+)/ , module: Phone.NANP.GD},
    %{regex: ~r/^(671)(.+)/ , module: Phone.NANP.GU},
    %{regex: ~r/^(876)(.+)/ , module: Phone.NANP.JM},
    %{regex: ~r/^(664)(.+)/ , module: Phone.NANP.MS},
    %{regex: ~r/^(670)(.+)/ , module: Phone.NANP.MP},
    %{regex: ~r/^(869)(.+)/ , module: Phone.NANP.KP},
    %{regex: ~r/^(758)(.+)/ , module: Phone.NANP.LC},
    %{regex: ~r/^(784)(.+)/ , module: Phone.NANP.VC},
    %{regex: ~r/^(721)(.+)/ , module: Phone.NANP.SX},
    %{regex: ~r/^(868)(.+)/ , module: Phone.NANP.TT},
    %{regex: ~r/^(649)(.+)/ , module: Phone.NANP.TC},
    %{regex: ~r/^(284)(.+)/ , module: Phone.NANP.VG},
    %{regex: ~r/^(340)(.+)/ , module: Phone.NANP.VI},
    %{regex: ~r/^(787|939)(.+)/ , module: Phone.NANP.PR}
  ]

  def match(number) do
    element = Enum.filter(@nanp, fn (x) -> Regex.match?(x.regex,number) end)
    Phone.NANP.builder(element, number)
  end

  def builder([], number) do
    cond do
      Phone.NANP.CA.match?(number) ->
        Phone.NANP.CA.match(number)
      Phone.NANP.US.match?(number) ->
        Phone.NANP.US.match(number)
      true ->
        raise ArgumentError, message: "Not a valid phone number."
    end
  end

  def builder([element], number) do
    [[_, code, number]] = Regex.scan(element.regex, number)
    element.module.builder(code, number)
  end
end

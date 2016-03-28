defmodule Phonex.NANP do
  @nanp [
    %{regex: ~r/^(684)(.+)/ , module: Phonex.NANP.AS},
    %{regex: ~r/^(264)(.+)/, module: Phonex.NANP.AI},
    %{regex: ~r/^(268)(.+)/ , module: Phonex.NANP.AG},
    %{regex: ~r/^(242)(.+)/ , module: Phonex.NANP.BS},
    %{regex: ~r/^(246)(.+)/ , module: Phonex.NANP.BB},
    %{regex: ~r/^(441)(.+)/ , module: Phonex.NANP.BM},
    %{regex: ~r/^(345)(.+)/ , module: Phonex.NANP.KY},
    %{regex: ~r/^(767)(.+)/ , module: Phonex.NANP.DM},
    %{regex: ~r/^(8[0|2|4]9)(.+)/ , module: Phone.NANP.DO},
    %{regex: ~r/^(473.+)/ , module: Phonex.NANP.GD},
    %{regex: ~r/^(671)(.+)/ , module: Phonex.NANP.GU},
    %{regex: ~r/^(876)(.+)/ , module: Phonex.NANP.JM},
    %{regex: ~r/^(664)(.+)/ , module: Phonex.NANP.MS},
    %{regex: ~r/^(670)(.+)/ , module: Phonex.NANP.MP},
    %{regex: ~r/^(869)(.+)/ , module: Phonex.NANP.KP},
    %{regex: ~r/^(758)(.+)/ , module: Phonex.NANP.LC},
    %{regex: ~r/^(784)(.+)/ , module: Phonex.NANP.VC},
    %{regex: ~r/^(721)(.+)/ , module: Phonex.NANP.SX},
    %{regex: ~r/^(868)(.+)/ , module: Phonex.NANP.TT},
    %{regex: ~r/^(649)(.+)/ , module: Phonex.NANP.TC},
    %{regex: ~r/^(284)(.+)/ , module: Phonex.NANP.VG},
    %{regex: ~r/^(340)(.+)/ , module: Phonex.NANP.VI},
    %{regex: ~r/^(787|939)(.+)/ , module: Phonex.NANP.PR}
  ]

  def match(number) do
    element = Enum.filter(@nanp, fn (x) -> Regex.match?(x.regex,number) end)
    Phonex.NANP.builder(element, number)
  end

  def builder([], number) do
    cond do
      Phonex.NANP.CA.match?(number) ->
        Phonex.NANP.CA.match(number)
      Phonex.NANP.US.match?(number) ->
        Phonex.NANP.US.match(number)
      true ->
        raise ArgumentError, message: "Not a valid phone number."
    end
  end

  def builder([element], number) do
    [[_, code, number]] = Regex.scan(element.regex, number)
    element.module.builder(code, number)
  end
end

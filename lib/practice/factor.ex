defmodule Practice.Factor do
  def parse_int(text) do
    {num, _} = Integer.parse(text)
    num
  end

  def factor(x) do
    list = []
    list = [1 | list]
    list = [2 | list]
    list = [3 | list]
    list = [x | list]
  end

end

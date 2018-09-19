defmodule Practice.Factor do
  def parse_int(text) do
    {num, _} = Integer.parse(text)
    num
  end
  
  def factor(x) do
    x
    |> parse_int
    list = []
    list = [1 | list]
    if (rem(x, 2) == 0) do
      list = [2 | list]
      Practice.Factor.factor(x / 2)
    end
    if (rem(x, 3) == 0) do
      list = [3 | list]
      Practice.Factor.factor(x / 3)
    end
    if (rem(x, 5) == 0) do
      list = [5 | list]
      Practice.Factor.factor(x / 5)
    end
  end
end

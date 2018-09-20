defmodule Practice.Factor do
  def parse_int(text) do
    {num, _} = Integer.parse(text)
    num
  end

  #base case
  #def factor()

  # list, accumulator
  def factor(acc, z, list) do
    list = [z | list]
    list = [acc | list]
    #factor(z)
  end

  # final function
  def factor(x) do
    list = []
    list = [1 | list]

    z = parse_int(x)
    if rem(z, 2) == 0 do
      z = div(z, 2)
      factor(2, z, list)
    end
    # if rem(z, 3) == 0 do
    #   z = div(z, 3)
    #   factor(3, z, list)
    # end
  end
end

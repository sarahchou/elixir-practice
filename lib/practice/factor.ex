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
    cond do
      rem(z, 2) == 0 ->
        z = div(z, 2)
        factor(2, z, list)
      rem(z, 3) == 0 ->
        z = div(z, 3)
        factor(3, z, list)
      rem(z, 5) == 0 ->
        z = div(z, 5)
        factor(5, z, list)
      rem(z, 7) == 0 ->
        z = div(z, 7)
        factor(7, z, list)
      true ->
        list = [z | list]
    end

    # if rem(z, 2) == 0 do
    #   z = div(z, 2)
    #   factor(2, z, list)
    # end
    # if rem(z, 3) == 0 do
    #   z = div(z, 3)
    #   factor(3, z, list)
    # end
  end
end

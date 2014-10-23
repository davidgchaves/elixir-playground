defmodule MyEnum do
  def all?(coll),              do: all?(coll, &(&1))
  def all?([], _),             do: true
  def all?([head|tail], func), do: func.(head) and all?(tail, func)

  # iex(1)> MyEnum.all? []
  # true
  # iex(2)> MyEnum.all? [true]
  # true
  # iex(3)> MyEnum.all? [false]
  # false
  # iex(4)> MyEnum.all? [true, true, true]
  # true
  # iex(5)> MyEnum.all? [true, false, true]
  # false
  # iex(6)> MyEnum.all? [1,2,3,4], &(&1 < 5)
  # true
  # iex(7)> MyEnum.all? [4,5,6,7], &(&1 < 5)
  # false


  def each([], _), do: :ok
  def each([head|tail], func) do
    func.(head)
    each(tail, func)
  end

  # iex(1)> Enum.each [], &(IO.puts &1)
  # :ok
  # iex(2)> MyEnum.each [], &(IO.puts &1)
  # :ok

  # iex(3)> Enum.each [1,2,3,4,5], &(IO.puts &1)
  # 1
  # 2
  # 3
  # 4
  # 5
  # :ok
  # iex(4)> MyEnum.each [1,2,3,4,5], &(IO.puts &1)
  # 1
  # 2
  # 3
  # 4
  # 5
  # :ok


  def filter([], _), do: []
  def filter([head|tail], func) do
    if func.(head) do
      [head] ++ filter(tail, func)
    else
      [] ++ filter(tail, func)
    end
  end

  # ex(1)> Enum.filter [], &(&1)
  # []
  # iex(2)> MyEnum.filter [], &(&1)
  # []

  # iex(3)> Enum.filter [1,2,3,4,5], &(&1 != 3)
  # [1, 2, 4, 5]
  # iex(4)> MyEnum.filter [1,2,3,4,5], &(&1 != 3)
  # [1, 2, 4, 5]


  def split(coll, n),                      do: _split([], coll, n)
  defp _split(left_split, [], _),          do: { Enum.reverse(left_split), [] }
  defp _split(left_split, right_split, 0), do: { Enum.reverse(left_split), right_split }
  defp _split(left_split, [head|tail], n), do: _split([head|left_split], tail, n-1)

  # iex(1)> Enum.split [], 3
  # {[], []}
  # iex(2)> MyEnum.split [], 3
  # {[], []}

  # iex(3)> Enum.split [1,2,3,4,5], 3
  # {[1, 2, 3], [4, 5]}
  # iex(4)> MyEnum.split [1,2,3,4,5], 3
  # {[1, 2, 3], [4, 5]}
end

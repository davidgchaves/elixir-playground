defmodule MyList do
  def len([]),           do: 0
  def len([_head|tail]), do: 1 + len(tail)

  # iex(1)> MyList.len([4,5,6])
  # 3

  def square([]),          do: []
  def square([head|tail]), do: [ head*head | square(tail) ]

  # iex(1)> MyList.square([])
  # []
  # iex(2)> MyList.square([4])
  # [16]
  # iex(3)> MyList.square([4,5,6])
  # [16, 25, 36]

  def add_1([]),          do: []
  def add_1([head|tail]), do: [ head+1 | add_1(tail) ]

  # iex(1)> MyList.add_1([])
  # []
  # iex(2)> MyList.add_1([5])
  # [6]
  # iex(3)> MyList.add_1([5,6,7,8])
  # [6, 7, 8, 9]

  def map([], _func),          do: []
  def map([head|tail], func), do: [ func.(head) | map(tail, func) ]

  # iex(1)> MyList.map [], fn (n) -> n*n end
  # []
  # iex(2)> MyList.map [20], fn (n) -> n*n end
  # [400]
  # iex(3)> MyList.map [20,30,40], fn (n) -> n*n end
  # [400, 900, 1600]

  def sum(list), do: _sum(list, 0)

  defp _sum([], total),          do: total
  defp _sum([head|tail], total), do: _sum(tail, total+head)

  # iex(1)> MyList.sum [10,20,30,40]
  # 100

  def my_sum([]), do: 0
  def my_sum([head|tail]), do: head + my_sum(tail)

  # iex(3)> MyList.my_sum [10,20,30,40]
  # 100

  def reduce([], value, _func),         do: value
  def reduce([head|tail], value, func), do: reduce(tail, func.(head, value), func)

  # iex(1)> MyList.reduce([1,2,3,4,5], 0, &(&1 + &2))
  # 15
  # iex(2)> MyList.reduce([1,2,3,4,5], 1, &(&1 * &2))
  # 120

  def mapsum([], _func),         do: 0
  def mapsum([head|tail], func), do: func.(head) + mapsum(tail, func)

  # iex(1)> MyList.mapsum [1,2,3], &(&1 * &1)
  # 14

  def max([]),          do: nil
  def max([x]),         do: x
  def max([head|tail]), do: Kernel.max(head, max(tail))

  # iex(1)> MyList.max []
  # nil
  # iex(2)> MyList.max [8]
  # 8
  # iex(3)> MyList.max [4,77,2,6,99,10]
  # 99

  # NOTE: In Elixir, you can get a code point's value by using ?
  def caesar([], _n),                           do: []
  def caesar([head|tail], n) when head+n <= ?z, do: [head+n | caesar(tail, n)]
  def caesar([head|tail], n),                   do: [head+n-26 | caesar(tail, n)]

  # iex(1)> MyList.caesar('ryvkve', 13)
  # 'elixir'

  def swap([]),            do: []
  def swap([a, b | tail]), do: [b, a | swap(tail)]
  def swap([_]),           do: raise "Can't swap a list with an odd number of elements"

  # iex(1)> MyList.swap [1,2,3,4,5,6]
  # [2, 1, 4, 3, 6, 5]
  # iex(2)> MyList.swap [1,2,3,4,5]
  # ** (RuntimeError) Can't swap a list with an odd number of elements

  def weather_for(_location, []),
    do: []
  def weather_for(location, [ head = [_, location, _, _] | tail ]),
    do: [ head | weather_for(location, tail) ]
  def weather_for(location, [_|tail]),
    do: weather_for(location, tail)

  def test_data do
    [
      [1366225622, 26, 15, 0.125],
      [1366225622, 27, 15, 0.45],
      [1366225622, 28, 21, 0.25],
      [1366229222, 26, 19, 0.081],
      [1366229222, 27, 17, 0.468],
      [1366229222, 28, 15, 0.60],
      [1366232822, 26, 22, 0.095],
      [1366232822, 27, 21, 0.05],
      [1366232822, 28, 24, 0.03],
      [1366236422, 26, 17, 0.025]
    ]
  end

  # iex(1)> MyList.weather_for(27, MyList.test_data)
  # [[1366225622, 27, 15, 0.45], [1366229222, 27, 17, 0.468], [1366232822, 27, 21, 0.05]]

  # iex(2)> MyList.weather_for(28, MyList.test_data)
  # [[1366225622, 28, 21, 0.25], [1366229222, 28, 15, 0.6], [1366232822, 28, 24, 0.03]]

  # iex(3)> MyList.weather_for(29, MyList.test_data)
  # []
end

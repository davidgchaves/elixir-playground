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
end

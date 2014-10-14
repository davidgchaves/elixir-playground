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
end

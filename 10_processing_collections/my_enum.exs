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
end

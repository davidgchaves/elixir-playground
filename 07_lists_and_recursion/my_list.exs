defmodule MyList do
  def len([]),           do: 0
  def len([_head|tail]), do: 1 + len(tail)
end

# iex(1)> MyList.len([4,5,6])
# 3

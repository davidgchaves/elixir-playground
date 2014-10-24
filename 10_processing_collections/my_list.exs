defmodule MyList do
  def flatten(list), do: _flatten(list, [])
  defp _flatten([], acc),                             do: acc
  defp _flatten([head|tail], acc) when is_list(head), do: _flatten(head, _flatten(tail, acc))
  defp _flatten([head|tail], acc),                    do: [ head | _flatten(tail, acc) ]

  # iex(1)> MyList.flatten [ [], [[[], []]]]
  # []

  # iex(2)> MyList.flatten([ 1, [ 2, 3, [4] ], 5, [[[6]]]])
  # [1, 2, 3, 4, 5, 6]
end

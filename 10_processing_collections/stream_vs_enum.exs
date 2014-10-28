defmodule StreamVsEnum do
  # The Enum module is greedy
  # Example: This pipeline generates 4 lists
  [1, 2, 3, 4, 5]
  |> Enum.map( &(&1*&1) )
  |> Enum.with_index
  |> Enum.map( fn {value, index} -> value - index end )
  |> IO.inspect
  # --> [1, 3, 7, 13, 21]

  # The Stream module is lazy
  [1, 2, 3, 4, 5]
  |> Stream.map( &(&1*&1) )
  |> Stream.map( &(&1+1) )
  |> Stream.filter( fn x -> rem(x,2) == 1 end )
  |> Enum.to_list
  |> IO.inspect
  # --> [5, 17]
end

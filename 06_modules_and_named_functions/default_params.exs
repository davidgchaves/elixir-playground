defmodule DefaultParams do
  def example(p1, p2 \\ 2, p3 \\ 3, p4), do: IO.inspect [p1, p2, p3, p4]
end

# iex(1)> DefaultParams.example("a", "b")
# ["a", 2, 3, "b"]

# iex(2)> DefaultParams.example("a", "b", "c")
# ["a", "b", 3, "c"]

# iex(3)> DefaultParams.example("a", "b", "c", "d")
# ["a", "b", "c", "d"]

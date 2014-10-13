defmodule DefaultParams do
  def example(p1, p2 \\ 2, p3 \\ 3, p4), do: IO.inspect [p1, p2, p3, p4]

  def with_pattern_matching(p1, p2 \\123)
  def with_pattern_matching(p1, 123),     do: IO.puts "You used the default"
  def with_pattern_matching(p1, 99),      do: IO.puts "99 is coming"
  def with_pattern_matching(p1, p2),      do: IO.puts "You used #{p2}"
end

# iex(1)> DefaultParams.example("a", "b")
# ["a", 2, 3, "b"]

# iex(2)> DefaultParams.example("a", "b", "c")
# ["a", "b", 3, "c"]

# iex(3)> DefaultParams.example("a", "b", "c", "d")
# ["a", "b", "c", "d"]


# iex(1)> DefaultParams.with_pattern_matching(0, 123)
# You used the default

# iex(2)> DefaultParams.with_pattern_matching(0, 99)
# 99 is coming

# iex(3)> DefaultParams.with_pattern_matching(0, 10)
# You used 10

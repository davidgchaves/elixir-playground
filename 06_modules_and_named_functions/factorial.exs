defmodule Factorial do
  def of(0), do: 1
  def of(n) when n > 0, do: n * of(n-1)
end

# iex(1)> Factorial.of(-3)
# ** (FunctionClauseError) no function clause matching in Factorial.of/1
#     06_modules_and_named_functions/factorial.exs:2: Factorial.of(-3)

# iex(1)> Factorial.of(3)
# 6

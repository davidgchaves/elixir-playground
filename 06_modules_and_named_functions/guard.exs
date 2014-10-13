defmodule Guard do
  def what_is(x) when is_number(x), do: IO.puts "#{x} is a  number"
  def what_is(x) when is_list(x),   do: IO.puts "#{inspect(x)} is a list"
  def what_is(x) when is_atom(x),   do: IO.puts "#{x} is an atom"
end

# iex(1)> Guard.what_is(100)
# 100 is a  number
# :ok

# iex(2)> Guard.what_is([1,2,3,4])
# [1, 2, 3, 4] is a list
# :ok

# iex(3)> Guard.what_is(:tarkovski)
# tarkovski is an atom
# :ok

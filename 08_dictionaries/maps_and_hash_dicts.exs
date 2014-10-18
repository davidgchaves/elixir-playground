defmodule Sum do
  def values(dict) do
    dict |> Dict.values |> Enum.sum
  end
end

# iex(1)> hash_dict = [one: 1, two: 2, three: 3] |> Enum.into HashDict.new
# #HashDict<[two: 2, one: 1, three: 3]>
# iex(2)> Sum.values hash_dict
# 6

# iex(3)> map = %{four: 4, five: 5, six: 6}
# %{five: 5, four: 4, six: 6}
# iex(4)> Sum.values map
# 15

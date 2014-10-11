list_concat = fn
  l1, l2 -> l1 ++ l2
end

sum = fn
  x, y, z -> x + y + z
end

pair_tuple_to_list = fn
  {a, b} -> [a, b]
end

# iex(1)> import_file "05_anonymous_functions/functions_and_pattern_matching.exs"
# #Function<6.90072148/1 in :erl_eval.expr/5>

# iex(2)> list_concat.([:a, :b], [:c, :d])
# [:a, :b, :c, :d]

# iex(3)> sum.(1,2,3)
# 6

# iex(4)> pair_tuple_to_list.( { 1234, 5678 } )
# [1234, 5678]

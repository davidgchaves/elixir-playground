prefix = fn str1 ->
  (fn str2 -> "#{str1} #{str2}" end)
end

# iex(1)> import_file "05_anonymous_functions/functions_can_return_functions.exs"
# #Function<6.90072148/1 in :erl_eval.expr/5>

# iex(2)> mrs = prefix.("Mrs")
# #Function<6.90072148/1 in :erl_eval.expr/5>
# iex(3)> mrs.("Smith")
# "Mrs Smith"

# iex(4)> prefix.("Elixir").("Rocks")
# "Elixir Rocks"

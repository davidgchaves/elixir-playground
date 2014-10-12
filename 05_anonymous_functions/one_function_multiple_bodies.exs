fizz_buzz = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end

# iex(1)> import_file "05_anonymous_functions/one_function_multiple_bodies.exs"
# #Function<18.90072148/3 in :erl_eval.expr/5>

# iex(2)> fizz_buzz.(0, 0, 8)
# "FizzBuzz"

# iex(3)> fizz_buzz.(0, 6, 8)
# "Fizz"

# iex(4)> fizz_buzz.(9, 0, 8)
# "Buzz"

# iex(5)> fizz_buzz.(9, 3, 5)
# 5

fb = fn
  n -> fizz_buzz.(rem(n,3), rem(n,5), n)
end

# iex(6)> import_file "05_anonymous_functions/one_function_multiple_bodies.exs"
# #Function<6.90072148/1 in :erl_eval.expr/5>

# iex(7)> [fb.(10), fb.(11), fb.(12), fb.(13), fb.(14), fb.(15), fb.(16)]
# ["Buzz", 11, "Fizz", 13, 14, "FizzBuzz", 16]

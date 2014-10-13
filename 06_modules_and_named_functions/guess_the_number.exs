defmodule Chop do
  def guess(actual, low..high)
    when actual in low..high,
    do: guess_(actual, low..high, halfway(high, low))

  defp guess_(actual, _, guessed)
    when actual == guessed,
    do: IO.puts "Gotcha! It's #{guessed}"

  defp guess_(actual, _..high, guessed)
    when actual > guessed do
      log_almost_there(guessed)
      guess_(actual, guessed+1..high, halfway(high, guessed+1))
  end

  defp guess_(actual, low.._, guessed)
    when actual < guessed do
      log_almost_there(guessed)
      guess_(actual, low..guessed-1, halfway(guessed-1, low))
  end

  defp halfway(high, low), do: div(high-low, 2) + low
  defp log_almost_there(guessed), do: IO.puts "So... it's not #{guessed}"
end

# iex(1)> Chop.guess(277, 10..1000)
# So... it's not 505
# So... it's not 257
# So... it's not 381
# So... it's not 319
# So... it's not 288
# So... it's not 272
# So... it's not 280
# So... it's not 276
# So... it's not 278
# Gotcha! It's 277

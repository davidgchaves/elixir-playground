# Without & shortcut
Enum.map [1,2,3,4], fn x -> x + 2 end

# With & shortcut
Enum.map [1,2,3,4], &(&1 +2)


# Without & shortcut
Enum.each [1,2,3,4], fn x -> IO.inspect x end

# With & shortcut
Enum.each [1,2,3,4], &IO.inspect/1

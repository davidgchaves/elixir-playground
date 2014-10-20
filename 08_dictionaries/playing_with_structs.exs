# The name of the module becomes the name of the map/struct
defmodule Subscriber do
  defstruct name: "", paid: false, over_18: true
end

# iex(3)> s3 = %Subscriber { name: "Mary", paid: true }
# %Subscriber{name: "Mary", over_18: true, paid: true}

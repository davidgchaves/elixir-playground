# The name of the module becomes the name of the map/struct
defmodule Subscriber do
  defstruct name: "", paid: false, over_18: true
end

# iex(3)> s3 = %Subscriber { name: "Mary", paid: true }
# %Subscriber{name: "Mary", over_18: true, paid: true}

defmodule Attendee do
  @derive Access
  defstruct name: "", paid?: false, over_18?: true

  def may_attend_after_party(attendee = %Attendee{}) do
    attendee.paid? && attendee.over_18?
  end

  def print_vip_badge(%Attendee{name: name})
  when name != "" do
    IO.puts "Very cheap badge for #{name}"
  end

  def print_vip_badge(%Attendee{}) do
    raise "Missing name for badge"
  end
end

# iex(1)> attendee1 = %Attendee{name: "Dave", over_18?: true, paid?: false}
# %Attendee{name: "Dave", over_18?: true, paid?: false}
# iex(2)> Attendee.may_attend_after_party(attendee1)
# false

# iex(3)> attendee2 = %Attendee{attendee1 | paid?: true}
# %Attendee{name: "Dave", over_18?: true, paid?: true}
# iex(4)> Attendee.may_attend_after_party(attendee2)
# true
# iex(5)> Attendee.print_vip_badge(attendee2)
# Very cheap badge for Dave
# :ok

# iex(6)> attendee3 = %Attendee{}
# %Attendee{name: "", over_18?: true, paid?: false}
# iex(7)> Attendee.print_vip_badge(attendee3)
# ** (RuntimeError) Missing name for badge

# iex(2)> sally[:name]
# "Sally"
# iex(3)> sally.name
# "Sally"
# iex(4)> sally[:over_18?]
# true
# iex(5)> sally.over_18?
# true

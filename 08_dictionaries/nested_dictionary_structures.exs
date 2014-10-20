defmodule Customer do
  defstruct name: "", company: ""
end

defmodule BugReport do
  defstruct owner: %{}, details: "", severity: 1
end

# iex(1)> report = %BugReport{ owner: %Customer{ name: "Dave", company: "Pragmatic" }, details: "broken" }
# %BugReport{details: "broken",
#            owner: %Customer{company: "Pragmatic", name: "Dave"},
#            severity: 1}

#iex(2)> report.owner.company
#"Pragmatic"

# iex(3)> put_in(report.owner.company, "PragProg")
# %BugReport{details: "broken",
#            owner: %Customer{company: "PragProg", name: "Dave"},
#            severity: 1}

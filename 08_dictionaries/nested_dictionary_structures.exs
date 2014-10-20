defmodule Customer do
  @derive Access
  defstruct name: "", company: ""
end

defmodule BugReport do
  @derive Access
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

# iex(4)> update_in(report.owner.name, &("Mr. " <> &1))
# %BugReport{details: "broken",
#            owner: %Customer{company: "Pragmatic", name: "Mr. Dave"},
#            severity: 1}

### Thanks to @derive Access:
# iex(1)> report = %BugReport{ owner: %Customer{ name: "Dave", company: "Pragmatic" }, details: "broken" }
# %BugReport{details: "broken",
#            owner: %Customer{company: "Pragmatic", name: "Dave"},
#            severity: 1}
# iex(2)> put_in(report[:owner][:company], "PragProg")
# %BugReport{details: "broken",
#            owner: %Customer{company: "PragProg", name: "Dave"},
#            severity: 1}
# iex(3)> update_in(report[:owner][:name], &("Mr. " <> &1))
# %BugReport{details: "broken",
#            owner: %Customer{company: "Pragmatic", name: "Mr. Dave"},
#            severity: 1}

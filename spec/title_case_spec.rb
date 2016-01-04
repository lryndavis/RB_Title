require('rspec')
require('title_case')

describe('String#title_case') do
  it("capitalizes the first letter of a word") do
    expect(("beowulf").title_case()).to(eq("Beowulf"))
  end
  it("capitalizes the first letter of a multiple word string") do
    expect(("beowulf begins").title_case()).to(eq("Beowulf Begins"))
  end
  it("does NOT capitalize designated words") do
    expect(("beowulf from brighton beach").title_case()).to(eq("Beowulf from Brighton Beach"))
  end
  it("capitalizes the first word of the sentence") do
    expect(("from beowulf to the hulk").title_case()).to(eq("From Beowulf to the Hulk"))
  end
end

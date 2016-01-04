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
    expect(("beowolf from brighton beach").title_case()).to(eq("Beowulf from Brighton Beach"))
  end 
end

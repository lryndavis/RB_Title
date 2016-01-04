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
  it("deals with non-letter characters") do
      expect(("57 beowulf alternative endings!!").title_case()).to(eq("57 Beowulf Alternative Endings!!"))
  end
  it("manages all uppercase entries") do
    expect(("BEOWULF ON THE ROCKS").title_case()).to(eq("Beowulf on the Rocks"))
  end
  it("manages mixed case entries") do
    expect(("BeOWUlf aND mE").title_case()).to(eq("Beowulf and Me"))
  end
end

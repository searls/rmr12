describe "Panda", ->
  it "is sad", ->
    expect(new Panda().disposition()).toBe("sad")

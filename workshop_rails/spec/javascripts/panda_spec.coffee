# Lots of different ways of saying the same thing

# 1. The normal Jasmine API, inlined expectation
describe "Panda (inlined)", ->
  it "is sad", ->
    expect(new Panda().disposition()).toBe("sad")

# 2. The normal Jasmine API, extracting each phase
describe "Panda (multi-step)", ->
  beforeEach ->
    @subject = new Panda

  describe "#disposition", ->
    beforeEach ->
      @result = @subject.disposition()
    it "is sad", ->
      expect(@result).toBe("sad")

# 3. The jasmine-given API
describe "Panda (jasmine-given)", ->
  Given -> @subject = new Panda

  describe "#disposition", ->
    When -> @result = @subject.disposition()
    Then -> @result == "sad"

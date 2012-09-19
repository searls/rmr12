# Lots of different ways of saying the same thing
# (cont. from panda_spec.js)

# 3. The normal Jasmine API, inlined expectation
describe "3. Panda (coffee, inlined)", ->
  it "is sad", ->
    expect(new Panda().disposition()).toBe("sad")

# 4. The normal Jasmine API, extracting each phase
describe "4. Panda (coffee, multi-step)", ->
  beforeEach ->
    @subject = new Panda

  describe "#disposition", ->
    beforeEach ->
      @result = @subject.disposition()
    it "is sad", ->
      expect(@result).toBe("sad")

# 5. The jasmine-given API
describe "5. Panda (coffee, jasmine-given)", ->
  Given -> @subject = new Panda

  describe "#disposition", ->
    When -> @result = @subject.disposition()
    Then -> @result == "sad"

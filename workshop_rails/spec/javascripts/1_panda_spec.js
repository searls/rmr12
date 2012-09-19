// Lots of different ways of saying the same thing

// 1. The normal Jasmine API, inlined expectation
describe("1. Panda (js, inlined)", function() {
  it("is sad", function() {
    expect(new Panda().disposition()).toBe("sad");
  });
});

// 2. The normal Jasmine API, extracting each phase
describe("2. Panda (js, multi-step)", function() {
  var subject;
  beforeEach(function() {
    subject = new Panda();
  });

  describe("#disposition", function() {
    var result;
    beforeEach(function() {
      result = subject.disposition()
    });
    it("is sad", function() {
      expect(result).toBe("sad");
    });
  });
});
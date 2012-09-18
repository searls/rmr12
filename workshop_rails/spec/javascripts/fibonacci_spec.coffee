describe "Fibonacci", ->
  Given -> @subject = new Fibonacci

  describe "#valueAt", ->
    Then -> expect(@subject.valueAt(i)).toBe(n) for n, i in [0, 1, 1, 2, 3, 5]

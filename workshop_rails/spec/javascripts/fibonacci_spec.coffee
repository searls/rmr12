describe "Fibonacci", ->
  Given -> @subject = new Fibonacci

  describe "#valueAt", ->
    Then -> @subject.valueAt(0) == 0
    Then -> @subject.valueAt(1) == 1
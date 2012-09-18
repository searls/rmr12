describe "Fibonacci", ->
  Given -> @subject = new Fibonacci

  describe "#valueAt", ->
    Then -> @subject.valueAt(0) == 0
    Then -> @subject.valueAt(1) == 1
    Then -> @subject.valueAt(2) == 1
    Then -> @subject.valueAt(3) == 2
    Then -> @subject.valueAt(4) == 3
    Then -> @subject.valueAt(5) == 5



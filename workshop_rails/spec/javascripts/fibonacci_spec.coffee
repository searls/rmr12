describe "Fibonacci", ->
  Given -> @subject = new Fibonacci

  describe "#valueAt", ->
    When -> @result = @subject.valueAt(0)
    Then -> @result == 0
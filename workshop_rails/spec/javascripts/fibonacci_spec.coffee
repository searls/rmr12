describe "Fibonacci", ->
  Given -> @subject = new Fibonacci

  describe "#valueAt", ->
    _([0, 1, 1, 2, 3, 5]).each (n,i) ->
      Then -> @subject.valueAt(i) == n
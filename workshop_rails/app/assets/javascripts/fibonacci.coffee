class window.Fibonacci
  valueAt: (n) ->
    return n unless n > 1
    @valueAt(n-1) + @valueAt(n-2)
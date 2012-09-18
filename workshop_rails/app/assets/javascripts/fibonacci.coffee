class window.Fibonacci
  valueAt: (n) ->
    if n <= 0
      0
    else if n == 1
      1
    else
      @valueAt(n-1) + @valueAt(n-2)
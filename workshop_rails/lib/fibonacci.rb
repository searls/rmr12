class Fibonacci
  def value_at(n)
    return n unless n > 1
    value_at(n-1) + value_at(n-2)
  end
end

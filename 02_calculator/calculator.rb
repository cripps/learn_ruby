def add(x,y)
  x + y
end

def subtract(x,y)
  x - y
end

def sum(ary)
  if ary == []
    ary = 0
  else
    ary.reduce(:+)
  end
end

def multiply(x,y)
  x * y
end

def multiply_arr(ary)
  if ary == []
    ary = 0
  else
  ary.reduce(:*)
  end
end

def factorial(x)
  if x == 0
    1
  else
  (1..x).reduce(:*)
  end
end
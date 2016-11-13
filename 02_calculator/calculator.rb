def add(f1, f2)
  f1 + f2
end
def subtract(f1, f2)
  f1 - f2
end
def sum array
  if array.length == 0
    0
  else
    array.inject(0,:+)
  end
end

def multiply array
  if array.length == 0
    0
  else
    array.inject(1,:*)
  end
end
def power array
  if array.length == 0
    0
  else
    array.inject(:**)
  end
end
def factorial(n)
  fact = n
  if n == 0
    fact = 1
  else
    x = n - 1
    while x >= 1
    fact *= x
    x = x -1
    end
  end
  return fact
end

def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(array)
  array.reduce(0) { |sum, x| sum += x }
end

def multiply(x, y)
  x * y
end

def product(array)
  array.reduce(:*)
end

def factorial(n)
  (1..n).reduce(1, :*)
end

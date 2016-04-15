# Instead of changing the method invocation, change the definition.

# In other words, rewrite the method so that it can take any number of arguments.


def mean(*rest)
  numbers = *rest
  num = []
  num << numbers
  numbers.inject(:+) / numbers.length
end
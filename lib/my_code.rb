# Your Code Here
def map(array)
  i = 0
  arr = []
  
  while i < array.length do
    arr.push(yield(array[i]))
    i += 1
  end
  
  return arr
end

def reduce(array, starting_point = 0)
  i = 0
  sum = starting_point
  
  while i < array.length do
    sum = yield(sum, array[i])
    i += 1
  end
  
  return sum
end
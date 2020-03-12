# Your Code Here
def map(source_array)
  index = 0
  arr = []
  
  while index < source_array.length do
    arr.push(yield(source_array[index]))
    index += 1
  end
  
  return arr
end

def reduce(source_array, starting_point = nil)
  if starting_point
    sum = starting_point
    index = 0
  else
    sum = source_array[0]
    index = 1
  end
  while index < source_array.length do
    sum = yield(sum, source_array[index])
    index += 1
  end
  return sum
end
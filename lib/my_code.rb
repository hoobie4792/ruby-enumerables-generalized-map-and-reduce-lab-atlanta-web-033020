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
  index = 0
  
  if starting_point
    total = starting_point
  else
    total = 0
  end
  
  while index < source_array.length do
    yield(total, source_array[index])
    index += 1
  end
end
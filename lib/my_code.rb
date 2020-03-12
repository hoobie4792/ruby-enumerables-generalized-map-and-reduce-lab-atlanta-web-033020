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

def reduce(source_array, starting_point = 0)
  
end
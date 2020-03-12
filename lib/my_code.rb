# Your Code Here
def map(source_array)
  index = 0
  arr = []
  
  while index < source_array.length do
    yield(source_array[index])
  end
end
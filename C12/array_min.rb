# C12: Given a sorted array, return the minimum. 

def find_min(array)
  return array[0]
end

# Given an unsorted array, return the minimum. Given an unsorted array, return the minimum without sorting.
def find_min2(array)
  min = array[0]
  
  array.each do |num|
    if num < min
      min = num
    end
  end
  
  return min
end

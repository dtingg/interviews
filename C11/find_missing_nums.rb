# C11: Given an array [2,4,5,67,99] return all the numbers from 1 - 100 that are not in this array. 
# Return the numbers in a new array. How would you optimize for time complexity. Can you refactor in a different way?

# If array is not sorted
# Time: O(1)
# Space: O(n). N is elements in array.
def find_missing_nums(array)
  num_hash = {}
  
  array.each do |number|
    num_hash[number] = true
  end
  
  missing_nums = []
  
  (1..100).each do |i|
    if num_hash[i]
      next
    else
      missing_nums << i
    end
  end
  
  return missing_nums
end

p find_missing_nums([2, 4, 5, 67, 99])

# If array is sorted
# Time: O(1)
# Space: O(1)

def find_missing_nums_sorted(array)
  i = 0
  
  missing_nums = []
  
  (1..100).each do |number|
    if array[i] == number
      i += 1
    else
      missing_nums << number
    end
  end
  
  return missing_nums
end

p find_missing_nums_sorted([2, 4, 5, 67, 99])

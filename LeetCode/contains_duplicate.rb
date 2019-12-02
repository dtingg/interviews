# LeetCode: Contains Duplicate
# Given an array of integers, find if the array contains any duplicates.
# Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.

# Time: O(n)
# Space: O(n)

def contains_duplicate(array)
  num_hash = {}
  
  array.each do |num|
    if num_hash[num]
      return true
    else
      num_hash[num] = 1
    end
  end
  
  return false
end

p contains_duplicate([1, 2, 3, 1]) # true
p contains_duplicate([4, 5, 6]) # false

# Time: O(n log n)
# Space: O(1)
def contains_duplicates2(array)
  array.sort!
  
  i = 0
  length = array.length
  
  while i < length
    if array[i] == array[i + 1]
      return true
    end
    i += 1
  end
  
  return false
end

p contains_duplicates2([1, 2, 3, 4]) # false
p contains_duplicates2([1, 1, 2, 3]) # true

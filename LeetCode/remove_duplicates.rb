# LeetCode: Remove Duplicates from Sorted Array
# Given a sorted array nums, remove the duplicates in-place such that each element appear only once and return the new length.
# Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

# Time: O(n)
# Space: O(n)

def remove_duplicates(array)
  return array if array.empty?
  
  unique_array = [array[0]]
  
  array.each do |num|
    if num != unique_array[-1]
      unique_array << num
    end
  end
  
  return unique_array
end

p remove_duplicates([1, 2, 2, 3, 3, 4, 4, 5, 5, 5]) # [1, 2, 3, 4, 5]

# Do it in place with no extra memory
# Time: O(n)
# Space: O(1)
def remove_duplicates_in_place(array)
  return 0 if array.empty?
  
  i = 0 # writing
  j = 1 # looking
  length = array.length
  
  while j < length
    if array[j] != array[i]
      i += 1
      array[i] = array[j]
    end
    j += 1
  end
  
  return i + 1
end

p remove_duplicates_in_place([1, 2, 2, 3, 3, 4, 4, 5, 5, 5]) # 4

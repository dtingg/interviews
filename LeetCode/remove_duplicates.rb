# Leet: Remove Duplicates from Sorted Array
# Time: O(n)
# Space: O(n)

def remove_dupes(array)
  return array if array.empty?
  
  unique_array = []
  
  array.each do |number|
    if number != unique_array[-1]
      unique_array << number
    end
  end
  
  return unique_array
end

p remove_dupes([1, 2, 2, 3, 4, 4, 4, 5, 5]) # [1, 2, 3, 4, 5]

# Do it in place with no extra memory.
# Time: O(n)
# Space: O(1)

def remove_dupes_in_place(array)
  return array if array.empty?
  
  i = 0 # writing
  j = 1 # looking
  
  length = array.length
  
  while j < length
    if array[j] != array[i]
      array[i + 1] = array[j]
      i += 1
      j += 1
    else
      j += 1
    end
  end
  
  return array[0..i]
end

p remove_dupes_in_place([1, 1, 1, 2, 3, 4, 5, 5]) # [ 1, 2, 3, 4, 5]

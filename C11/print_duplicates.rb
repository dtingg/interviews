# C11: Find the duplicate integers in an array, print them out. 

# Not sorted
# Time: O(n)
# Space: O(n)
def print_duplicates(array)
  num_hash = {}
  
  array.each do |number|
    if num_hash[number]
      puts number 
    else
      num_hash[number] = true
    end
  end
end

print_duplicates([1, 1, 2, 3, 3, 4, 5, 5]) # 1, 3, 5 - duplicates next to each other
print_duplicates([1, 2, 3, 4, 5]) # nothing - no duplicates
print_duplicates([4, 4, 4, 4]) # 4 4 4 - multiple duplicates

# Sorted
# Time: O(n)
# Space: O(1)
def print_duplicates_sorted(array)
  i = 0
  length = array.length
  
  while i < length
    if array[i] == array[i + 1]
      puts array[i]
    end
    i += 1
  end
end

print_duplicates_sorted([1, 1, 2, 3, 3, 4, 5, 5]) # 1, 3, 5 - duplicates next to each other
print_duplicates_sorted([1, 2, 3, 4, 5]) # nothing - no duplicates
print_duplicates_sorted([4, 4, 4, 4]) # 4 4 4 - multiple duplicates

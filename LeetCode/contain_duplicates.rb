# Leet: Given an array of integers, find if the array contains any duplicates.

# Time: O(n)
# Space: O(n)

def contain_dupes(array)
  num_hash = {}
  
  array.each do |num|
    if num_hash[num]
      return true
    else
      num_hash[num] = true
    end
  end
  
  return false
end

p contain_dupes([1, 5, 3, 1, 2]) # true

# Time: O(n log n)
# Space: O(1)

def contain_dupes2(array)
  array.sort!
  
  i = 0
  length = array.length
  
  while i < length - 1
    if array[i] == array[i+1]
      return true
    else
      i += 1
    end
  end
  
  return false
end

p contain_dupes2([1, 2, 3, 7]) # false
p contain_dupes2([1, 2, 3, 4, 5, 5]) # true

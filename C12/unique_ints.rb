# C12: Given a sorted array of integers, return an array containing each unique integer value.

# Time: O(n)
# Space: O(n) because of hash
def unique_ints(array)
  num_hash = {}
  
  array.each do |num|
    num_hash[num] = true
  end
  
  return num_hash.keys
end

p unique_ints([1,2,2,3,3,3,3,4,5,5]) # [1,2,3,4,5]

# Time: O(n)
# Space: O(1)
def unique_ints2(array)
  i = 0
  j = 1
  length = array.length
  
  while j < length
    if array[j] == array[i]
      j += 1
    else
      array[i+1] = array[j]
      i += 1
      j += 1  
    end
  end
  
  return array[0..i]
end

p unique_ints2([1,2,2,3,3,3,3,4,5,5]) # [1,2,3,4,5]

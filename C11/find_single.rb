# C11: Given an array of pairs and one single integer return the single integer. 
# Sample input: [1, 1, 2, 2, 3, 3, 7, 9, 9], output: 7. 
# Be able to optimize for time and space complexity

# Time: O(n)
# Space: O(1)

def find_single_sorted(array)
  # array.sort! Add if not sorted (adds n log n time)
  
  i = 0
  length = array.length
  
  while i < length
    if array[i] != array[i+1]
      return array[i]
    else
      i += 2
    end
  end
end

p find_single_sorted([1, 1, 2, 2, 3, 3, 7, 9, 9]) # 7
p find_single_sorted([1, 2, 2, 3, 3]) # 1 - at beginning
p find_single_sorted([1, 1, 5]) # 5 - at end

# Time: O(n)
# Space: O(n). N is unique elements in array
def find_single_unsorted(array)
  num_hash = {}
  
  array.each do |number|
    if num_hash[number] 
      num_hash[number] += 1
    else
      num_hash[number] = 1
    end
  end
  
  num_hash.each do |num, freq|
    if freq == 1
      return num
    end
  end
end

p find_single_unsorted([1, 2, 3, 4, 2, 3, 4]) # 1
p find_single_unsorted([4]) # 4 - single element

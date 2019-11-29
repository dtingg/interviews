# C11: Array of Arrays Question. 
# Given the array = [  [1, 2, 3], [4, 5, 6], [3, 2, 1]  ] find elements in arrays are duplicated 
# if so, its true, if not, its false. Write a method.  

# ANOTHER PHRASING: Determine if any of the sub-arrays contain all of the same elements as another sub array. 
# The elements do not have to be in the same order. If any of them do, return true; else return false. 

# Time: O(n)
# Space: O(n)

def duplicate_sub_arrays(array)
  array_hash = {}
  
  array.each do |sub_array|
    sorted_array = sub_array.sort
    
    if array_hash[sorted_array]
      return true
    else
      array_hash[sorted_array] = true
    end
    
  end
  
  return false
end

p duplicate_sub_arrays([[1, 2, 3]]) # false - single array
p duplicate_sub_arrays([[1, 2, 3], [4, 5, 6], [3, 2, 1]]) # true - second array is out of order

# After implementing the method, they asked: what if you wanted to return the array with the highest number of matches?
# Time: O(n)
# Space: O(n)

def duplicate_sub_arrays2(array)
  array_hash = {}
  
  array.each do |sub_array|
    sorted_array = sub_array.sort
    
    if array_hash[sorted_array]
      array_hash[sorted_array] += 1
    else
      array_hash[sorted_array] = 1
    end
  end
  
  max_array = array_hash.max_by do |key, value|
    value
  end
  
  return max_array[0]
end

p duplicate_sub_arrays2([[1, 2, 3], [3, 2, 1], [4, 5, 6], [6, 5, 4], [5, 6, 4]]) # [4, 5, 6]

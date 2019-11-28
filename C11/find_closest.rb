# C11: Given a sorted array, a value (val), and a number (k), find the k number of elements closest in value to the given value (val).

# In the case of a tie, use the one on the left. Array given was [1, 3, 5, 6, 7, 8, 11, 12, 20], value was 8, and k was 3. 
# After implementing the solution, they asked what if the value given was 20 (at the end of the array).

# Time: O(n)
# Space: O(n)

def find_closest(array, value, k)
  results_hash = {}
  
  array.each do |number|
    if number == value
      next
    else
      difference = (value - number).abs # get absolute value
      results_hash[number] = difference
    end
  end
  
  sorted_results = results_hash.min_by(k) do |number, diff|
    diff
  end
  
  sorted_results.map! do |array|
    array[0]
  end
  
  return sorted_results
end

p find_closest([1, 5, 6, 7, 9], 5, 2) # [6, 7] - one number is same as target
p find_closest([1, 5, 10], 5, 4) # [1, 10] - k is greater than array length
p find_closest([1, 3, 5, 6, 7, 8, 11, 12, 20], 8, 3) # [7, 6, 5]
p find_closest([1, 2, 3, 4, 5], 3, 2) # [2, 4]

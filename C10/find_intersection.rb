# C10: Given two arrays return the intersection (asked to optimize solution)

# Time: O(n). N is number of elements in the arrays.
# Space: O(n)

def find_intersection(array1, array2)
  num_hash = {}
  
  array1.each do |number|
    if num_hash[number]
      num_hash[number] += 1
    else
      num_hash[number] = 1
    end
  end
  
  results = []
  
  array2.each do |number|
    if num_hash[number] && num_hash[number] > 0
      results << number
      num_hash[number] -= 1
    end
  end
  
  return results
end

p find_intersection([1, 2, 3, 4, 5], [2, 4, 6]) # [2, 4]
p find_intersection([1, 2, 2, 4, 5], [2, 2, 2]) # [2, 2]
p find_intersection([-4, -2, 0, 3, 6], [-4, 3, 9]) # [-4, 3]

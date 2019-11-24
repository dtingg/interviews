# C10: Find maximum in an array (no negatives, all int, no duplicates)

# Time: O(n). N is length of array.
# Space: O(1),

def find_maximum(array)
  return nil if !array || array.empty?
  
  max = 0
  
  array.each do |number|
    if number > max
      max = number
    end
  end
  
  return max
end

array1 = [1, 2, 3, 4, 5] # 5 - regular
array2 = [5] # 5 - single number
array3 = [] # nil - empty array
array4 = [4, 2, 1] # 4 - largest at front
array5 = [2, 2, 2] # 2 - duplicate numbers
array6 = [4, -1, 2, 6] # 6 - negative number and largest in back

p find_maximum(array1)
p find_maximum(array2)
p find_maximum(array3)
p find_maximum(array4)
p find_maximum(array5)
p find_maximum(array6)

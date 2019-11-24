# C10: Find maximum in an array (no negatives, all int, no duplicates)

# Time: O(n). N is length of array.
# Space: O(1)

def find_maximum(array)
  return nil if !array || array.empty? # array nil or empty
  
  max = array[0]
  
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

# find the max value in an array (was later told the array could contain both ints and numbers stored as strings... 
# also can be negatives)

def find_maximum2(array)
  return nil if !array || array.empty?
  
  max = array[0].to_i
  
  array.each do |number|
    int = number.to_i
    
    if int > max
      max = int
    end
  end
  
  return max
end

array7 = [1, 3, "5", 4] # 5 - string is the max
array8 = ["4", -3, 8] # 8 - regular integer is the max

p find_maximum2(array7)
p find_maximum2(array8) 

# C10: Given an array, return the ranges in a string. [1, 2, 3, 5, 9, 10] --> "1-3, 5, 9-10". 

Time: O(n)
Space: O(n). N is number of ranges.

def find_ranges(array)
  length = array.length
  ranges = []
  
  front = 0
  back = 0
  
  while front < length
    if array[back + 1] == array[back] + 1
      back += 1
    elsif front == back
      ranges << array[front]
      front = back + 1
      back = front
    else
      ranges << "#{array[front]}-#{array[back]}"
      front = back + 1
      back = front
    end
  end
  
  return ranges.join(", ")
end

p find_ranges([1, 2, 3, 5, 9, 10]) # 1-3, 5, 9-10
p find_ranges([5, 6, 7, 8, 9]) # 5-9
p find_ranges([8]) # 8
p find_ranges([-5, -4, -3, 0, 6, 7, 8]) # -5--3, 0, 6-8

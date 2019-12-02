# LeetCode: Missing Number
# Given an array containing n distinct numbers taken from 0, 1, 2, ..., n, find the one that is missing from the array.

# Time: O(n)
# Space: O(n)
def missing_number(nums)
  num_hash = {}
  
  length = nums.length
  
  nums.each do |num|
    num_hash[num] = true
  end
  
  (0..length-1).each do |i|
    if !num_hash[i]
      return i
    end
  end
end

p missing_number([3, 0, 1]) # 2
p missing_number([6, 4, 3, 2, 0, 1]) # 5

# LeetCode: Single Number
# Given a non-empty array of integers, every element appears twice except for one. Find that single one.

# Time: O(n)
# Space: O(n)
def single_number(nums)
  num_hash = {}
  
  nums.each do |num|
    if num_hash[num]
      num_hash[num] += 1
    else
      num_hash[num] = 1
    end
  end
  
  num_hash.each do |num, quantity|
    if quantity == 1
      return num
    end
  end
end

p single_number([4,1,2,1,2]) # 4

# Time: O(n log n)
# Space: O(1)
def single_number2(nums)
  nums.sort!
  
  i = 0
  length = nums.length
  
  while i < length
    if nums[i] != nums[i+1]
      return nums[i]
    end
    i += 2
  end  
end

p single_number2([4,1,2,1,2]) # 4

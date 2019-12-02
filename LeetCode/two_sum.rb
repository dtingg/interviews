# LeetCode: Two Sum
# Given an array of integers, return indices of the two numbers such that they add up to a specific target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# Time: O(n)
# Space: O(n)

def two_sum(array, target)
  num_hash = {}
  
  array.each_with_index do |num, index|
    difference = target - num
    if num_hash[difference]
      return [num_hash[difference], index]
    else
      num_hash[num] = index
    end
  end
end

p two_sum([2, 7, 11, 15], 9) # 0, 1

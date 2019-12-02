# LeetCode: Intersection of Two Arrays II
# Given two arrays, write a function to compute their intersection.

# Time: O(n+m) Iterate through both arrays
# Space: O(n) Build hash for first array

def find_intersection(a1, a2)
  a1_hash = {}
  
  a1.each do |num|
    if a1_hash[num]
      a1_hash[num] +=1
    else
      a1_hash[num] = 1
    end
  end
  
  intersection = []
  
  a2.each do |num|
    if a1_hash[num] && a1_hash[num] > 0
      a1_hash[num] -= 1
      intersection << num
    end
  end
  
  return intersection
end

p find_intersection([4,9,5], [9,4,9,8,4]) # [9, 4]

# C12: Given an array of integeres and a sum, return the indices of integers that add up to that sum.

def find_sum(array, target)
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

p find_sum([1, 2, 3, 4, 5], 5) # [1, 2]

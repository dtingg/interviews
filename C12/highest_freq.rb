# C12: Given an array, return the highest frequency. 

def highest_freq(array)
  num_hash = {}
  
  array.each do |num|
    if num_hash[num]
      num_hash[num] += 1
    else
      num_hash[num] = 1
    end  
  end
  
  max_freq = num_hash.max_by do |num, freq|
    freq
  end
  
  return max_freq[0]
end

p highest_freq([1, 2, 3, 6, 3, 2, 8, 30, 3]) # 3

# C11: 1) Remove duplicates from sorted array.

def remove_duplicates(array)
  unique_array = [array[0]]
  
  array.each do |num|
    if num != unique_array[-1]
      unique_array << num
    end
  end
  
  return unique_array
end

# 2) What if the array is not sorted and you want to return unique elements
def remove_duplicates_unsorted(array)
  num_hash = {}
  
  array.each do |num|
    if num_hash[num] 
      num_hash[num] += 1
    else
      num_hash[num] = 1
    end
  end
  
  unique_array = []
  
  num_hash.each do |key, value|
    if value == 1
      unique_array << key
    end
  end
  
  return unique_array
end

# 3) What if the user of the method removeDuplicates does not know the array needs to be sorted, what will you do?
# array.sort!

# 4) What if the array is not sorted, have duplicates and you want to return top K elements
def find_top_element(array, k)
  num_hash = {}
  
  array.each do |num|
    if num_hash[num]
      num_hash[num] += 1
    else
      num_hash[num] = 1
    end
  end
  
  sorted_nums = num_hash.max_by(k) do |key, value|
    value
  end
  
  sorted_nums.map! do |key, value|
    key
  end
  
  return sorted_nums
end

p find_top_element([5, 5, 1, 1, 1, 3, 4], 2) # 1, 5

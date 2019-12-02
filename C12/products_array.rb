# C12: Given an array nums of n integers where n > 1, 
# return an array output such that output[i] is equal to the product of all the elements of nums except nums[i].

def products_array(array)
  number_zeros = 0
  
  array.each do |num|
    if num == 0
      number_zeros += 1
    end
  end
  
  if number_zeros >= 2
    return Array.new(array.length, 0)
  end
  
  overall_total = 1
  
  array.each do |num|
    overall_total *= num if num != 0
  end
  
  new_array = []
  
  array.each do |num|
    if num == 0
      new_array << overall_total
    elsif number_zeros == 1
      new_array << 0
    else
      product = overall_total / num
      new_array << product
    end
  end
  
  return new_array
  
end

p products_array([1,2,3,4]) # [24,12,8,6]
p products_array([0, 2, 4]) # [8, 0, 0]
p products_array([0, 1, 0, 5]) # [0, 0, 0, 0]

def products_array2(array)
  i = 0
  length = array.length
  
  new_array = []
  
  while i < length
    total = 1
    array.each_with_index do |num, index| 
      if i != index
        total *= num
      end
    end
    new_array << total
    i += 1
  end
  
  return new_array
end

p products_array2([1,2,3,4]) # [24,12,8,6]

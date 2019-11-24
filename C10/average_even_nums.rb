# C10: Given an array of numbers, return the average of all the even numbers. 
# [2, 3, 4, 6] --> even nums are [2, 4, 6] --> average is 4

# Time: O(n)
# Space: O(1)

def average_even_nums(array)
  overall_total = 0
  eligible_nums = 0
  
  array.each do |number|
    if number % 2 == 0
      overall_total += number
      eligible_nums += 1
    end
  end
  
  if eligible_nums == 0
    return 0
  else
    average = overall_total / eligible_nums.to_f
    return average.round(1)
  end
end

array1 = [1, 2, 3, 4, 5] # 3.0 - Whole number
array2 = [1, 3, 5] # 0 - No evens
array3 = [2, 4, 8] # 4.7 - Decimal number

p average_even_nums(array1)
p average_even_nums(array2)
p average_even_nums(array3)

# C12: Given two arrays of integers 0-9, return the sum as an array of integers 0-9. 

def sum_arrays(array1, array2)
  new_array = []
  
  length = array1.length
  
  length.times do |i|
    sum = array1[i] + array2[i]
    if sum < 10
      new_array << sum
    else
      first_digit = sum / 10
      new_array << first_digit
      
      second_digit = sum % 10
      new_array << second_digit
    end
  end
  
  return new_array
end

p sum_arrays([1,2,3], [2,3,4]) # [3,5,7]
p sum_arrays([7,6,3], [5,5,5]) # [1,2,1,1,8]

# PSE 11
# Imagine working on software that processes lists of numbers. 
# Create a method takes two sorted lists and merges them into a single sorted list. 
# This method should take in two lists of whole numbers. 
# The method should return a new sorted list which consists of the elements of the two arguments.

def merge_sorted(array1, array2)
  i = 0 # array 1
  j = 0 # array 2
  array1_len = array1.length
  array2_len = array2.length
  
  sorted_array = []
  
  while sorted_array.length < (array1_len + array2_len)
    if i == array1_len
      array2[j..-1].each do |num|
        sorted_array << num
      end
    elsif
      j == array2_len
      array1[i..-1].each do |num|
        sorted_array << num
      end
    elsif array1[i] < array2[j]
      sorted_array << array1[i]
      i += 1
    elsif array1[i] > array2[j]
      sorted_array << array2[j]
      j += 1
    end
  end
  
  return sorted_array
end

p merge_sorted([1, 2, 4, 5],	[6])	# [1, 2, 4, 5, 6]
p merge_sorted([-30, -10, 0, 15, 16],	[-20, -5, 5])	# [-30, -20, -10, -5, 0, 5, 15, 16]
p merge_sorted([5, 7, 8], [3, 4, 6]) # [3, 4, 5, 6, 7, 8]

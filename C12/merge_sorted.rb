# C12: Merge two sorted arrays.  

def merge_sorted(array1, array2)
  i = 0 # array 1
  j = 0 # array 2
  
  array1_len = array1.length
  array2_len = array2.length
  
  results = []
  
  while true
    if i == array1_len
      array2[j..-1].each do |num|
        results << num
      end
      break
    elsif j == array2_len
      array1[i..-1].each do |num|
        results << num
      end
      break
    elsif
      array1[i] < array2[j]
      results << array1[i]
      i += 1
    else
      results << array2[j]
      j += 1
    end
  end
  
  return results  
end

p merge_sorted([1, 3, 5, 7], [2, 4, 6]) # [1, 2, 3, 4, 5, 6, 7]

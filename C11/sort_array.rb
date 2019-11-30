# C11: Sort an unsorted array [-33, -41, 2,9,1,50] => [-41,-33,1,2,9,50]

# Time: O(n^2)
# Space: O(1)

def bubble_sort(array)
  length = array.length
  
  i = 0
  
  while i < length - 1
    j = 0
    while j < length - i - 1
      if array[j] > array[j+1]
        temp = array[j]
        array[j] = array[j+1]
        array[j+1] = temp
      end
      j += 1
    end
    i += 1
  end
  return array
end

p bubble_sort([-33, -41, 2,9,1,50]) # [-41,-33,1,2,9,50]

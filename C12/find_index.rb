# C12: Given a sorted array and a value, return the index if the value is found. 
# If not, return the index where it would be if it were inserted in order.

def find_index(array, value)
  array.each_with_index do |num, index|
    if num == value || num > value
      return index
    end
  end
end

p find_index([1, 2, 3, 4, 5], 3) # 2
p find_index([4, 5, 6, 8], 7) # 3

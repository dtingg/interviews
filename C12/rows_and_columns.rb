# C12: Given input of (rows, columns), both of which will be positive integers, therefore no edge cases to consider.  
# Return an array of arrays, where the number of subarrays = #rows, and each subarray have # elemetnts equal to #columns.  
# PLUS, the elements in all these arrays must be integers, starting with 1 and increment by 1 as you go. 

def gen_grid(rows, columns)
  grid = []
  
  i = 1
  
  rows.times do 
    row = []
    columns.times do 
      row << i
      i += 1
    end
    grid << row
  end
  
  return grid
end

p gen_grid(2, 3) # [ [1,2,3], [4,5,6] ]
p gen_grid(1, 5) # [ [1,2,3,4,5] ]
p gen_grid(2, 2) # [ [1,2], [3,4] ]

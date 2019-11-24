# C10: Given a string, a starting point and and endpoint return the string between the starting point and the input. 
# The end point can occur before the start point, see example. 
# Ex// Given "ThisIsAString"  End-point is 3 and Start-point 9 will return "ringThis"  

# Time: O(1)
# Space: O(n)

def string_start_end(string, start_point, end_point)
  if end_point > start_point
    final_string = string[start_point..end_point]
  elsif start_point == end_point
    final_string = string[start_point]
  else
    final_string = string[start_point..-1] + string[0..end_point]
  end
  
  return final_string
end

p string_start_end("ThisIsAString", 9, 3) # ringThis - end before start
p string_start_end("Alphabet", 2, 5) # phab - start before end
p string_start_end("Apple", 0, 0) # A - start and end are the same

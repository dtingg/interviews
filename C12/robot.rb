# C12: A robot is walking on a plane. It starts at 0,0 and you are given instructions in the form of a string. 
# Return true or false if the robot ends back at the starting point
# Up = u Down= d Left=l right=r
# All movements count as 1

def robot(string)
  i = 0 # left/right
  j = 0 # up/down
  
  string.each_char do |char|
    if char == "U"
      j += 1
    elsif char == "D"
      j -= 1
    elsif char == "L"
      i -= 1
    elsif char == "R"
      i += 1
    end
  end
  
  return (i == 0) && (j == 0)
end

p robot("UDLR") # true
p robot("ULR") # false

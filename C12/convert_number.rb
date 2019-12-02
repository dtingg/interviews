# C12: Write a method that takes in a string of digits and converts those into an integer. 
# You can only use a built in function IF there is only one digit being converted at a time. 

def convert_number(string)
  number = 0
  
  multiplier = 1
  
  length = string.length
  
  i = length - 1
  
  while i >= 0
    if string[i] == "-"
      number *= -1
      i -= 1
    else
      number += (string[i].to_i * multiplier)
      i -= 1
      multiplier *= 10
    end
  end
  
  return number
end

p convert_number("4") # 4
p convert_number("-123") # -123 

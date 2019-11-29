# C11: Given a Run-length encoding problem: write two functions, 1 function to encode the run and 1 to decode run. 
# For example given a run of 000011101 , the encoding function would return a single data value and count. 
# Output would be something like 4 zero, 3 one, 1 zero, 1 one. 
# For the 2nd function pass in the output from function 1 and decode it so the function 2 would return the original run 000011101

# Time: O(n)
# Space: O(n)

def encode(string)
  index = 0
  length = string.length
  count = 1
  
  final_string = []
  
  while index < length
    if string[index] == string[index + 1]
      count += 1
    else
      if string[index] == "0"
        number = "zero"
      else
        number = "one"
      end
      final_string << "#{count} #{number}"
      count = 1
    end
    index += 1
  end
  
  return final_string.join(", ")
end

p encode("000011101") # 4 zero, 3 one, 1 zero, 1 one

# Time: O(n)
# Space: O(n)

def decode(string)
  final_string = ""
  
  index = 0
  
  while index < string.length  
    times = string[index].to_i
    
    if string[index + 2] == "z"
      number = "0"
      index += 8
    else
      number = "1"
      index += 7
    end 
    
    final_string << number * times
  end
  
  return final_string  
end

p decode("4 zero, 3 one, 1 zero, 1 one") # "000011101"

# C11: Given a string, return back a) the letter that is repeated the most times in one consecutive block, 
# and b) the number of times it was repeated in that consecutive block. 
# The output can be whatever format you choose (array with the letter in the first index and the count in the second, 
# or perhaps a string with a letter and a number as a character). Example input: "rrSSrrrrPQr" would return "r4" or ["r", 4]

# Time: O(n)
# Space: O(1)

def most_repeated_letter(string)
  letter = ""
  count = 0
  
  length = string.length
  i = 0
  current_count = 1
  
  while i < length  
    if string[i] == string[i+1]
      current_count += 1
    else
      if current_count > count
        count = current_count
        letter = string[i]
      end
      current_count = 1
    end
    
    i += 1
  end
  
  return "#{letter}#{count}"
end

p most_repeated_letter("rrSSrrrrPQr") # r4
p most_repeated_letter("abc") # a1 - tie, but picks the first one
p most_repeated_letter("d") # d1 - only one char

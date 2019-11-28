# C11: Implement a recursive solution to check if an input word is a palindrome. 

# Another version: Write a method that checks if a string is palindrome or not. 
# Return true if it is a palindrome, false if not. If string is empty, return false. 

# Recursive using index
# Time: O(n)
# Space: O(n)

def palindrone_index(string, front=0, back=string.length-1)
  return false if string.length == 0
  return true if string.length == 1
  
  if front >= back
    return true
  elsif string[front] != string[back]
    return false
  else
    return palindrone_index(string, front+1, back-1)
  end
end

p palindrone_index("kayak") # true - odd number of letters
p palindrone_index("noon") # true - even number of letters
p palindrone_index("apple") # false
p palindrone_index("d") # true - single letter
p palindrone_index("") # false - empty string

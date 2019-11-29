# CTCI: URLify: Write a method to replace all spaces in a string with "%20". 
# You may assume that the string has sufficient space at the end to hold the additional characters, 
# and that you are given the "true" length of the string.

# Time: O(n)
# Space: O(1)

def urlify(string, true_length)  
  i = true_length - 1 # looking
  j = -1 # writing
  
  while i >= 0
    if string[i] != " "
      string[j] = string[i]
      i -= 1
      j -= 1
    else
      string[j] = "0"
      j -= 1
      string[j] = "2"
      j -= 1
      string[j] = "%"
      j -= 1
      i -= 1
    end
  end
  
  return string
end

p urlify("Mr John Smith    ", 13) # "Mr%20John%20Smith"
p urlify("Happy Ending  ", 12) # "Happy%20Ending"

# Using built-in gsub
def urlify2(string, true_length)
  string.gsub!(" ", "%20")
  
  return string
end

p urlify2("Mr John Smith", 13) # "Mr%20John%20Smith"
p urlify2("Happy Ending", 12) # "Happy%20Ending"

# CTCI: Implement an algorithm to determine if a string has all unique characters.

# Time: O(n)
# Space: O(n)

def is_unique?(string)
  char_hash = {}
  
  string.each_char do |char|
    if char_hash[char]
      return false
    else
      char_hash[char] = true
    end
  end
  
  return true
end

p is_unique?("cat") # true - positive
p is_unique?("kitty") # false - negative
p is_unique?("a") # true - single char
p is_unique?("dogg") # false - double at end

# What if you cannot use additional data structures?
# Time: O(n^2)
# Space: O(1)

def is_unique2(string)
  length = string.length
  i = 0
  
  while i < length - 1
    j = i + 1
    
    while j < length
      if string[i] == string[j]
        return false
      end
      
      j += 1
    end
    
    i += 1
  end
  return true
end

p is_unique2("cat") # true - positive
p is_unique2("kitty") # false - negative
p is_unique2("a") # true - single char
p is_unique2("dogg") # false - double at end

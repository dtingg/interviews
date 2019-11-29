# CTCI: Palindrone Permutation: Given a string, write a function to check if it is a permutation of a palindrone. 
# A palindrone is a word or phrase that is the same forwards and backwards.  
# A permutation is a rearrangement of letters.  
# The palindrone does not need to be limited to just dictionary words.  
# You can ignore casing and non-letter characters.

# Time: O(n)
# Space: O(n)

def palindrone_perm(string)
  char_hash = {}
  
  string.each_char do |char|
    if char == " "
      next
    else
      char = char.downcase
    end
    
    if char_hash[char]
      char_hash[char] += 1  
    else
      char_hash[char] = 1
    end
  end
  
  number_of_odds = 0
  
  char_hash.each do |key, value|
    if value % 2 != 0
      number_of_odds += 1
    end
  end
  
  return number_of_odds <= 1
end

p palindrone_perm("Tact Coa") # true
p palindrone_perm("Chocolate") # false

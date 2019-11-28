# CTCI: Check Permutation: Given two strings, write a method to decide if one is a permutation of the other.

# What about whitespace and case sensitivity?

# Time: O(n + m)
# Space: O(n)

def is_perm?(string1, string2)
  return false if string1.length != string2.length
  
  char_hash = {}
  
  string1.each_char do |char|
    char = char.downcase
    if char_hash[char]
      char_hash[char] += 1
    else
      char_hash[char] = 1
    end
  end
  
  string2.each_char do |char|
    char = char.downcase
    if !char_hash[char]
      return false
    elsif char_hash[char] > 1
      char_hash[char] -= 1
    elsif char_hash[char] == 1
      char_hash.delete(char)
    end
  end
  
  return char_hash.empty?
end

p is_perm?("cat", "dog") # false - classic case
p is_perm?("cat", "tac") # true
p is_perm?("pie", "pie") # true - duplicates
p is_perm?("bird", "birds") # false - extra letter
p is_perm?("dog", "God") # true - if case insensitive

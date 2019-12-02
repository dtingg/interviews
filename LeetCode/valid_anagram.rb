# LeetCode: Valid Anagram
# Given two strings s and t , write a function to determine if t is an anagram of s.

# Time: O(n)
# Space: O(n)

def is_anagram(s, t)
  letter_hash = {}
  
  s.each_char do |char|
    if letter_hash[char]
      letter_hash[char] += 1
    else
      letter_hash[char] = 1
    end
  end
  
  t.each_char do |char|
    if !letter_hash[char]
      return false
    else
      letter_hash[char] -= 1
      if letter_hash[char] == 0
        letter_hash.delete(char)
      end
    end
  end
  
  return letter_hash.empty?
end

p is_anagram("apple", "elppa") # true

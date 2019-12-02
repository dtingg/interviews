# LeetCode: First Unique Character in a String
# Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1.

# Time: O(n)
# Space: O(n)

def first_unique(string)
  letter_hash = {}
  
  string.each_char do |char|
    if letter_hash[char]
      letter_hash[char] += 1
    else
      letter_hash[char] = 1
    end
  end
  
  string.each_char.with_index do |char, index|
    if letter_hash[char] == 1
      return index
    end
  end
  
  return -1
end

p first_unique("lovelace") # 1

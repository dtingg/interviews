# LeetCode: Valid Palindrome
# Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.
# Note: For the purpose of this problem, we define empty string as valid palindrome.

# Time: O(n)
# Space: O(1)

def is_palindrome(s)
  string = s.gsub(/\W/, "").downcase
  
  length = string.length
  
  front = 0
  back = length - 1
  mid = length / 2
  
  while front < mid
    if string[front] != string[back]
      return false
    else
      front += 1
      back -= 1
    end
  end
  return true
  
end

p is_palindrome("racecar") # true
p is_palindrome("noon") # true
p is_palindrome("apple") # false

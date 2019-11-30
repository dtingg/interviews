# PSE: Week 6: Palindrome
# Imagine working on software that processes text. A palindrome is a word, phrase, or sequence that reads the same backward as forward.
# Create a Ruby method that determines if a string is a palindrome. This method should take in one string as a parameter. This method should return true if the string is a palindrome.

# Time: O(n)
# Space: O(1)

def palindrone?(string, front=0, back=string.length-1)
  if front >= back
    return true
  elsif
    string[front] != string[back]
    return false
  else
    return palindrone?(string, front += 1, back -= 1)
  end
end

p palindrone?("Hello, world!") # No
p palindrone?("racecar") # Yes
p palindrone?("noon")	#Yes
p palindrone?("mom")	# Yes
p palindrone?("kayak")	# Yes

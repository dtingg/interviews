# LeetCode: Valid Parentheses
# Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
# An input string is valid if:
# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Note that an empty string is also considered valid.

# Time: O(n)
# Space: O(n)
def is_valid(s)
  return true if s == ""
  
  bracket_hash = { ")"=> "(", "}"=>"{", "]"=>"["}
  
  stack = []
  
  s.each_char do |char|
    if bracket_hash[char]
      last = stack.pop
      if bracket_hash[char] != last
        return false
      end
    else
      stack << char
    end
  end
  
  return stack.empty?
end

# CTCI: String Rotation: Assume you have a method isSubstring which checks if one word is a substring of another.
# Given two strings, s1 and s2, write code to check if s2 is a rotation of s1 using only one call to isSubstring.
# Ex: waterbottle is a rotation of erbottlewat

# Time: O(n)
# Space: O(1)

def string_rotation(string1, string2)
  double_string1 = string1 * 2
  
  return double_string1.include?(string2)
end

p string_rotation("waterbottle", "erbottlewat") # true
p string_rotation("doggone", "gonedon") # false

# LeetCode: Reverse String
# Write a function that reverses a string. The input string is given as an array of characters char[].
# Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
# You may assume all the characters consist of printable ascii characters.

# Time: O(n)
# Space: O(1)
def reverse_string(array, front = 0, back = array.length-1)
  if front >= back
    return array
  else
    temp = array[front]
    array[front] = array[back]
    array[back] = temp
    return reverse_string(array, front + 1, back - 1)
  end
end

p reverse_string(["c", "a", "t"]) # ["t", "a", "c"]

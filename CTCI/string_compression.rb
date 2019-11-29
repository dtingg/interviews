# CTCI: String Compression: Implement a method to perform basic string compression 
# using the counts of repeated characters.
# For example, the string aabcccccaaa would become a2b1c5a3.  
# If the "compressed" string would not become smaller than the original string, your method should return the original string. You can assume the string has only uppercase and lowercase letters (a-z).

# Time: O(n)
# Space: O(1)

def string_compression(string)
  length = string.length
  compressed_string = ""
  
  i = 0 # pointer
  j = 1 # counter
  
  while i < length    
    if string[i] == string[i+1]
      j += 1
      i += 1
    else
      compressed_string << "#{string[i]}#{j}"
      i += 1  
      j = 1
    end
  end
  
  if compressed_string.length < length
    return compressed_string
  else
    return string
  end
end


p string_compression("aabcccccaaa") # a2b1c5a3
p string_compression("aabbccdd") # aabbccdd

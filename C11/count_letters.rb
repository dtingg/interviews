# C11: You will be passed a string like "aaaabbbc", write a function that will return "a4b3c1". 
# In the case of "ab" where it would return "a1b1", return the shorter string.

# Time: O(n)
# Space: O(n)

def count_letters(string)
  i = 0
  
  length = string.length
  count = 1
  
  summary_string = ""
  
  while i < length
    if string[i] == string[i+1]
      count += 1
    else
      summary_string << "#{string[i]}#{count}"
      count = 1
    end
    i += 1
  end
  
  if summary_string.length < length
    return summary_string
  else
    return string
  end
end

p count_letters("aaaabbbc") # a4b3c1
p count_letters("ab") #ab

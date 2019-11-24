# C10: Given a string, e.g. 'rrSSSqqrrrr' return the letter and count 
# where a letter consecutively occurs the greatest number of times e.g. 'r4'

# Time: O(n). N is length of string.
# Space: O(1)

def letter_freq(string)
  length = string.length
  i = 0
  
  max_letter = ""
  max_count = 0
  
  count = 1
  
  while i < length
    if string[i] == string[i+1]
      count += 1
    else
      if count > max_count
        max_count = count
        max_letter = string[i]
      end
      count = 1
    end
    i += 1
  end
  
  return "#{max_letter}#{max_count}"
end

p letter_freq("rrSSSqqrrrr") # r4 - answer at end of string
p letter_freq("aaabbbccdd") # a3 - answer at beginning of string
p letter_freq("bbccdd") # b2 - tie, but should be first

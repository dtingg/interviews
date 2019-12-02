# C12: Given a string, determine whether it is a valid phone number. 
# Valid phone numbers can have parentheses around the first 3 numbers and/or dashes after the 3rd and 6th number. 
# Or they can have no punctuation at all. The digits must all be numbers (not letters etc)

def phone_number(string)
  numbers = 0
  
  pattern = /\d/
  
  string.each_char do |char|
    if pattern.match(char)
      numbers += 1
    end
  end
  
  if numbers == 10
    return true
  else
    return false
  end
  
end

p phone_number("(206) 555-1212") # true
p phone_number("33-456-7890") # false

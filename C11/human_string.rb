# C11: 1) Given a array of strings = e.g. ["rock","paper","scissors", "cat", "dog", "fish"] 
# return a human readable format => "rock, paper, scissors, cat, dog and fish" 

# Time: O(n)
# Space: O(n)

def human_string(array)
  length = array.length
  
  new_string = array[0...-1].join(", ")
  new_string << " and #{array[-1]}"
  
  return new_string
end

p human_string(["rock", "paper", "scissors", "cat", "dog", "fish"]) # "rock, paper, scissors, cat, dog and fish"

# 2) Once answered, they asked how you could refactor your code if you were given a limit--
# i.e. the above array with a limit of 2 should return "rock, paper, and 4 more"

# Time: O(1)
# Space: O(1)

def human_string_limit(array)
  length = array.length
  
  new_string = "#{array[0]}, #{array[1]}, and #{length - 2} more"
  
  return new_string
end

p human_string_limit(["rock", "paper", "scissors", "cat", "dog", "fish"]) # "rock, paper, and 4 more"

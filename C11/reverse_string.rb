# C11: Reverse a string
# Time: O(n)
# Space: O(n)

def reverse_string(string, left=0, right=string.length-1)
  return string if left >= right
  
  temp = string[left]
  string[left] = string[right]
  string[right] = temp
  
  return reverse_string(string, left += 1, right -= 1)
end

p reverse_string("hello") # "olleh" - odd
p reverse_string("coffee") # "eeffoc" - even

# Reverse the words in a sentence
# Time: O(n)
# Space: O(n)

def reverse_sentence(sentence)
  reverse_string = reverse_string(sentence)
  
  reverse_words = reverse_string.split
  
  new_words = []
  
  reverse_words.each do |word|
    new_words << reverse_string(word)
  end
  
  return new_words.join(" ")
end

p reverse_sentence("good morning") # "morning good"
p reverse_sentence("I am Yoda") # Yoda am I

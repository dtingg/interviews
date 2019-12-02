# LeetCode: Reverse Words in a String
# Given an input string, reverse the string word by word.

def reverse_string(string, front=0, back=string.length-1)
  if front >= back
    return string
  else
    temp = string[front]
    string[front] = string[back]
    string[back] = temp
    return reverse_string(string, front + 1, back - 1)
  end
end

def reverse_words(s)
  reverse_sentence = reverse_string(s)
  words = reverse_sentence.split
  
  words.each do |word|
    word = reverse_string(word)
  end
  
  return words.join(" ")
end

p reverse_words("I am Yoda") # Yoda am I

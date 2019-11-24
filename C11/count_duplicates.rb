# C11: Given an array of words return the number of duplicates. 
# (”dog”, ”dog”, ”dog” counts as one duplicate, because it’s one word repeated.) 

# Time: O(n)
# Space: O(n)

def count_duplicates(array)
  word_hash = {}
  
  array.each do |word|
    if word_hash[word]
      word_hash[word] += 1
    else
      word_hash[word] = 1
    end
  end
  
  total_duplicates = 0
  
  word_hash.each do |word, freq|
    if freq > 1
      total_duplicates += 1
    end
  end
  
  return total_duplicates
end

p count_duplicates(["dog", "dog", "dog"]) # 1
p count_duplicates(["dog", "cat"]) # 0 No duplicates
p count_duplicates(["dog", "dog", "cat", "cat"]) # 2

# C12: Given song lyrics, return the k most frequent words that appear.

def song_lyrics(lyrics, k)  
  words = lyrics.split(" ")
  
  word_hash = {}
  
  words.each do |word|
    word = word.downcase.gsub(/\W/, "")
    if word_hash[word]
      word_hash[word] += 1
    else
      word_hash[word] = 1
    end
  end
  
  max_words = word_hash.max_by(k) do |key, value|
    value
  end
  
  max_words.map! do |word, freq|
    word
  end
  
  return max_words  
end

p song_lyrics("A lot of little little birds birds water water.", 2) # [little, birds]

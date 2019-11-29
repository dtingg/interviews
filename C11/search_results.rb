# C11: Pretend Google needs to improve its search results. 
# Pretend for a search term, such as "funny cat", we have a list of URLs. 
# Write a method that returns the most popular URL.
# The technical prompt was all that was given. Interviewee needed to ask a lot of clarifying questions. 
# Input was an array of strings like "URL1", "URL2", "URL3", "URL1" and the method should return "URL1" in that case. 
# Also seemed to be wanting you to recognize a lot of edge cases.

# Time: O(n)
# Space: O(n)

def find_most_popular(array)
  url_hash = {}
  
  array.each do |url|
    if url_hash[url]
      url_hash[url] += 1
    else
      url_hash[url] = 1
    end
  end
  
  max_url = url_hash.max_by(1) do |url, count|
    count
  end
  
  return max_url[0][0]
end

p find_most_popular(["URL1", "URL2", "URL3", "URL1"]) # URL1

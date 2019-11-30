# PSE Week 14: Gems and Stones
# Imagine that you're a programmer on a geology expedition!
# You have a pile of stones. Some of these stones are gems. You want to know how many of the stones from your pile are gems.
# You will get an array of strings named stones. Each element in the array represents a stone.
# You will get a second array of strings named gem_types. Each element in the array represents a type of gem to look out for.
# Create a method that determines how many gems you have in your pile of stones. This method should take in two parameters: an array of stones and an array of gem_types. This method should have a return value of an integer with the number of gems you have.

# Time: O(n)
# Space: O(n)

def number_gems(stones, gems)
  gem_hash = {}
  
  gems.each do |gem|
    gem_hash[gem] = true
  end 
  
  total_gems = 0
  
  stones.each do |stone|
    if gem_hash[stone]
      total_gems += 1
    end
  end
  
  return total_gems
end

p number_gems(["rock", "rock", "ruby", "sapphire", "garnet", "clod", "amethyst"],	["garnet", "amethyst", "pearl"]) # 2
p number_gems(["garnet", "pearl", "garnet", "garnet"],	["pearl"]) #	1
p number_gems(["clod", "diamond", "gem"],	["peridot"]) #	0

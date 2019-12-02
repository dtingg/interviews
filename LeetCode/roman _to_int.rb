# LeetCode: Given a roman numeral, convert it to an integer. Input is guaranteed to be within the range from 1 to 3999.

# Time: O(n)
# Space: O(n)

def roman_to_int(s)
  total = 0
  length = s.length
  index = -1
  
  roman_hash = {"I"=>1, "V"=>5, "X"=>10, "L"=>50, "C"=>100, "D"=>500, "M"=>1000}
  
  while index >= -length
    total += roman_hash[s[index]]
    if (s[index] == "V" || s[index] == "X") && s[index-1] == "I"
      total -= 1
      index -= 1
    elsif (s[index] == "L" || s[index] == "C") && s[index-1] == "X"
      total -= 10
      index -= 1
    elsif (s[index] == "D" || s[index] == "M") && s[index-1] == "C"
      total -= 100
      index -= 1
    end
    index -= 1
  end
  
  return total
end

p roman_to_int("III") # 3
p roman_to_int("IV") # 4

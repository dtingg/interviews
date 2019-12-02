# C11: 1) Find the missing number in a range 0 to N. 

def find_missing(array)
  array.each_with_index do |num, i|
    if num != i
      return i
    end
  end
end

p find_missing([0, 1, 2, 3, 5]) # 4
p find_missing([0, 1, 3, 4, 5]) # 2

# (alternate of same question given to different interviewee: return true if all values there, return false if value missing)

def find_missing2(array)
  array.each_with_index do |num, i|
    if num != i
      return false
    end
  end
  return true
end

p find_missing2([0, 1, 2, 3]) # true
p find_missing2([0, 1, 3, 4, 5]) # false

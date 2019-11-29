# C11: Software has version numbers. They might look like "10.1.24" and "10.2.13". 
# Write a method that takes two software version numbers in the form of a string (with the periods) as input and outputs one of the following: 
# 1 if the first string represents the newer software, 
# 0 if the software versions are exactly the same, and 
# -1 if the the second string represents the newer software. 
# If the inputs were "10.1.24" and "10.2.13", the output should be -1. 
# Followed up by asking me what edge cases I could think of, such as if one or both of the strings were empty. 
# If the inputs were "10.1.24" and "10.1", how would you do that?

def software_versions(s1, s2)
  software_1 = s1.split(".")
  software_2 = s2.split(".")
  
  
  if software_1.length < software_2.length
    return -1
  elsif software_1.length > software_2.length
    return 1
  end
  
  software_1.length.times do |i|
    if software_2[i].nil? || software_1[i].to_i > software_2[i].to_i
      return 1
    elsif software_1[i].nil? || software_1[i].to_i < software_2[i].to_i
      return -1
    end
  end
  
  return 0
end

p software_versions("10.1.24", "10.2.13") # -1 - second one is bigger
p software_versions("10.1.24", "10.1") # 1 - first one is bigger, plus different lengths
p software_versions("10.1.2", "10.1.2") # 0 - exactly the same
p software_versions("10.11.5", "10.2.6") # 1 - middle group has misleading first digit

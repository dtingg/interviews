# PSE: Week 5: Hamming
# Imagine working on software that analyzes mutations in DNA.
# Create a method that calculates the number of differences between two DNA strands (aka two strings). 
# This method should take in two different DNA strands as parameters. 
# This method should have a return value of the number of differences between each string. 
# For example, given these two DNA strands (strings), the method should return 7 because there are 7 differences:
# Strand #1:   GAGCCTACTAACGGGAT
# Strand #2:   CATCGTAATGACGGCCT
# Differences: ^ ^ ^  ^ ^    ^^
#              7 in total

def hamming(strand1, strand2)
  differences = 0
  
  length = strand1.length
  
  length.times do |i|
    if strand1[i] != strand2[i]
      differences += 1
    end
  end
  
  return differences
end

p hamming("GAGCCTACTAACGGGAT", "CATCGTAATGACGGCCT") # 7
p hamming("abc", "ddddd") # 3

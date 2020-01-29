# C10: Find Leader
# Given n number of people and k as your eliminator pick the leader in n people. 
# For example n = 5 and k = 3, eliminate every third person until only one is left as the leader. 
# The elimination order in the sample set would be #3, then #1, then #5, then #2 - leaving #4 as the leader. Does your algorithm still work when n = 16?

def find_leader(n, k)
  if n == 1
    return 1  
  else
    return (find_leader(n-1, k) + k - 1) % n + 1
  end
end

p find_leader(5, 3)

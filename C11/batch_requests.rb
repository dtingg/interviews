# C11: Uber charges riders in "batch requests" after a ride. 
# Given a series of batch requests: #1 - $50, #2 - $30, #3 - $100, #4 - $80, a number of cards declined: 2, 
# and a total declined amount $150, determine the id's of the riders whos cards were declined. ie. (#1 , #3)

def batch_requests(hash, total)
  values = hash.values.sort
  
  low = 0
  high = -1
  sum = values[low] + values[high]
  
  while sum != total
    if sum < total
      low += 1
    else high -= 1
    end
    sum = values[low] + values[high]
  end
  
  riders = []
  
  hash.each do |key, value|
    if value == values[low] || value == values[high]
      riders << key
    end
  end
  
  return riders
end

p batch_requests({1=>50, 2=>30, 3=>100, 4=>80}, 150) # 1, 3

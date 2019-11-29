# C11: The cost of a stock on each day is given in an array, find the max profit that you can make by buying and selling in those days. 
# For example, if the given array is [100, 180, 260, 310, 40, 535, 695], the maximum profit can earned by buying on day 0, selling on day 3. 
# Time & space complexity for both brute force method and the more optimal solution.

# Time: O(n)
# Space: O(1)

def stock_prices(array)
  i = 0
  
  max_profit = -1
  buy_day = nil
  sell_day = nil
  
  length = array.length
  
  while i < length - 1
    j = i + 1
    
    while j < length
      profit = array[j] - array[i]
      
      if profit > max_profit
        max_profit = profit
        buy_day = i
        sell_day = j
      end
      
      j += 1
    end
    
    i += 1
  end
  
  return "Buy day: #{buy_day}. Sell day: #{sell_day}."
end

p stock_prices([100, 180, 260, 310, 40, 535, 695]) # 4, 6

# Alternate version
# Write a function that takes stock prices (array) and returns the best profit that could be made with one purchase and one sell. 
# Also return the buy and sell days. Stock cannot be sold before purchase. 
# In this case, indices were days associated with the stock prices. (different interviewee) 
# When I came in, the question was explained to me verbally, and there was a line graph representing stock prices drawn on the board. 
# Part of the question was figuring out that the values on the graph can correspond to array indices.

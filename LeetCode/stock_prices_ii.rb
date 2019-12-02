# LeetCode: Best Time to Buy and Sell Stock II
# Say you have an array for which the ith element is the price of a given stock on day i.
# Design an algorithm to find the maximum profit. You may complete as many transactions as you like (i.e., buy one and sell one share of the stock multiple times).
# Note: You may not engage in multiple transactions at the same time (i.e., you must sell the stock before you buy again).

def max_profit(prices)
  total_profit = 0
  length = prices.length
  i = 0
  
  while i < length - 1 # Don't need to check last one
    if prices[i] < prices[i + 1]
      profit = prices[i + 1] - prices[i]
      total_profit += profit
    end
    
    i += 1
  end
  
  return total_profit
end

p max_profit([7, 1, 5, 3, 6, 4]) # 7

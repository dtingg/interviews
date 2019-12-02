# LeetCode: Best Time to Buy and Sell Stock
# Say you have an array for which the ith element is the price of a given stock on day i.
# If you were only permitted to complete at most one transaction (i.e., buy one and sell one share of the stock), design an algorithm to find the maximum profit.
# Note that you cannot sell a stock before you buy one.

# Time: O(n)
# Space: O(1)
def max_profit(prices)
  min_price = prices[0]
  best_profit = 0
  
  prices.each do |price|
    if price < min_price
      min_price = price
    else
      profit = price - min_price
      if profit > best_profit
        best_profit = profit
      end
    end
  end
  
  return best_profit
end

p max_profit([7, 1, 5, 3, 6, 4]) # 5

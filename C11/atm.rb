# C11: 1. Design an ATM in a manner of your choosing (could be a class etc.). 
# 2. Design a function that takes in an amount of money to be withdrawn, 
# and gives the user back that in the appropriate number of 100's, 50's, 20's, 10's and 1's.

# Time: O(1)
# Space: O(1)

class ATM
  def initialize
  end
  
  def withdraw(amount)
    cash_hash = {100=>0, 50=>0, 20=>0, 10=>0, 1=>0} # Integers as keys need hashrocket notation
    
    cash_hash.each do |number, bills|
      product = amount / number.to_i
      
      if product >= 1
        cash_hash[number] = product
        amount -= number.to_i * product
      end
    end
    
    return cash_hash
  end
end

becu = ATM.new

p becu.withdraw(253) # {100=>2, 50=>1, 20=>0, 10=>0, 1=>3}

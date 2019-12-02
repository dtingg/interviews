# Leet: FizzBuzz
# Write a program that outputs the string representation of numbers from 1 to n.
# But for multiples of three it should output “Fizz” instead of the number and for the multiples of five output “Buzz”. 
# For numbers which are multiples of both three and five output “FizzBuzz”.

# Time: O(n)
# Space: O(n)

def fizzbuzz(n)
  results = []
  
  (1..n).each do |i|
    if i % 15 == 0
      results << "FizzBuzz"
    elsif i % 3 == 0
      results << "Fizz"
    elsif i % 5 == 0
      results << "Buzz"
    else 
      results << i.to_s
    end
  end
  
  return results
end

p fizzbuzz(5) # [1, 2, Fizz, 4, Buzz]

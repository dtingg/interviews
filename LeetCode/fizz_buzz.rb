# Leet: FizzBuzz

# Time: O(n)
# Space: O(n)

def fizzbuzz(n)
  answers = []
  
  (1..n).each do |number|
    if number % 15 == 0
      answers << "FizzBuzz"
    elsif number % 3 == 0
      answers << "Fizz"
    elsif number % 5 == 0
      answers << "Buzz"
    else
      answers << number.to_s
    end
  end
  return answers
end

p fizzbuzz(5) # [1, 2, Fizz, 4, Buzz]

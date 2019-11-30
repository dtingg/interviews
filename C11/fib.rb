# C11: Fibbonacci
# 1) Print out the series of Fibbonacci numbers given the nth number in the series (w/o recursion)

def fib(n)
  solutions = [0, 1]
  
  if n == 0
    puts 0
    return
  elsif n == 1
    puts 0
    puts 1
    return
  else
    puts 0
    puts 1
  end
  
  (n-1).times do
    next_num = solutions[-2] + solutions[-1]
    solutions << next_num
    puts next_num
  end
end

fib(5) # 0 1 1 2 3 5
fib(0) # 0
fib(1) # 0 1
fib(2) # 0 1 1

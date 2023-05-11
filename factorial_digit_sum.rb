# https://projecteuler.net/problem=20

test_num = 100

def factorial(n)
  (1..n).inject(1, :*)
end

def digit_sum(n)
  n.digits.sum
end

puts(digit_sum(factorial(test_num)))

# https://projecteuler.net/problem=6

max = 100

sum_of_squares = (1..max).map do |n|
  n ** 2
end.sum

square_of_sum = (1..max).sum ** 2

puts(square_of_sum - sum_of_squares)

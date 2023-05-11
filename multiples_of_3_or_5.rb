# https://projecteuler.net/problem=1

max = 1000

puts(
  (1...max).map do |n|
    n if n % 3 == 0 || n % 5 == 0
  end.compact.sum
)

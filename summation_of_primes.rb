# https://projecteuler.net/problem=10

max = 2_000_000

# attempt 1: slow
# primes = []
# n = 2
# while (n < max)
#   if primes.none? { |i| n % i == 0 }
#     primes << n
#   end
#   n += 1
# end

# attempt 2: slow af
# primes = []
# list = (2...max).to_a
# while (list.length > 0)
#   primes << list.first
#   list.select! { |i| i % primes.last != 0 }
#   list.compact!
#   puts(list.size)
# end

# attempt 3
primes = []
n = 2
while (n < max)
  if (2..Math.sqrt(n).to_i).none? { |i| n % i == 0 }
    primes << n
  end
  n += 1
end

puts(primes.sum)

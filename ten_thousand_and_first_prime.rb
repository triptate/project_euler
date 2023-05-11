# https://projecteuler.net/problem=7

desired_prime_index = 10_001

primes = []
n = 2
while (primes.length < desired_prime_index)
  if primes.none? { |i| n % i == 0 }
    primes << n
  end
  n += 1
end

puts(primes.last)

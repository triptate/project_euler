# https://projecteuler.net/problem=3

test_num = 600851475143

def get_prime_factors(n)
  factors = []
  i = 2
  while (i <= n)
    if n % i == 0
      factors << i
      n /= i
    else
      i += 1
    end
  end
  factors
end

puts(get_prime_factors(test_num).max)

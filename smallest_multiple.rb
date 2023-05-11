# https://projecteuler.net/problem=5

max = 20

def get_prime_factors(n)
  factors = {}
  i = 2
  while (i <= n)
    if n % i == 0
      factors[i] ||= 0
      factors[i] += 1
      n /= i
    else
      i += 1
    end
  end
  factors
end

factors = {}
(1..max).each do |i|
  get_prime_factors(i).map do |factor, count|
    if factors[factor].nil? || factors[factor] < count
      factors[factor] = count
    end
  end
end

puts(factors.map { |f, c| f ** c }.inject(&:*))

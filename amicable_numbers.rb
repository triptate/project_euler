# https://projecteuler.net/problem=21

max = 10_000

amicable_storage = {}
amicables = []

(1...max).each do |n|
  amicable_storage[n] = (1..n / 2).select { |i| n % i == 0 }.compact.sum
  if amicable_storage[n] < n && amicable_storage[amicable_storage[n]] == n
    amicables << n
    amicables << amicable_storage[n]
  end
end

puts(amicables.sum)

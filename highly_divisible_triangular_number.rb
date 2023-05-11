# https://projecteuler.net/problem=12

desired_number_of_factors = 500

def nth_triangle_number(n)
  (1..n).sum
end

# we only care about knowing the number of factors...so we can just get the first half and double it
def small_factors_of(n)
  (1..Math.sqrt(n).to_i).select { |i| n % i == 0 }.compact
end

current_num = 1
while (small_factors_of(nth_triangle_number(current_num)).size * 2 <= desired_number_of_factors)
  current_num += 1
end

puts(nth_triangle_number(current_num))

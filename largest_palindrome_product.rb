# https://projecteuler.net/problem=4

def is_palindrome?(n)
  n.to_s == n.to_s.reverse
end

# slow first attempt

# def get_prime_factors(n)
#   factors = []
#   i = 2
#   while (i <= n)
#     if n % i == 0
#       factors << i
#       n /= i
#     else
#       i += 1
#     end
#   end
#   factors
# end

# def modified_array_subtract(ary1, ary2)
#   ary2.each do |el|
#     if idx = ary1.index(el)
#       ary1.delete_at(idx)
#     end
#   end
#   ary1
# end

# def is_the_product_of_two_three_digit_numbers?(n)
#   factors = get_prime_factors(n)
#   (1...n).to_a.each do |combination_size|
#     factors.combination(combination_size).each do |combination|
#       if combination.inject(&:*).to_s.length === 3 &&
#           modified_array_subtract(factors.dup, combination).inject(&:*).to_s.length === 3
#         return true
#       end
#     end
#   end
#   return false
# end

# max = 999 * 999

# result = nil
# (1..max).to_a.reverse_each do |n|
#   if is_palindrome?(n) && is_the_product_of_two_three_digit_numbers?(n)
#     result = n
#     break
#   end
# end

# faster second attempt

result = 0
i = 999
while (i >= 100)
  j = i
  while (j >= 100)
    product = i * j
    break if product < result
    if is_palindrome?(product) && product > result
      result = product
    end
    j -= 1
  end
  i -= 1
end

puts(result)

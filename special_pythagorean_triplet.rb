# https://projecteuler.net/problem=9

sum_of_factors = 1000

a = 1
while (a < sum_of_factors)
  b = a
  while (b < sum_of_factors)
    if a ** 2 + b ** 2 == (sum_of_factors - a - b) ** 2
      puts(a * b * (1000 - a - b))
      break
    else
      b += 1
    end
  end
  a += 1
end

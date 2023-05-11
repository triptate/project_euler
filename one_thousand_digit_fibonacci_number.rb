# https://projecteuler.net/problem=25

fibonacci_sequence = [1, 1]

while (fibonacci_sequence[-1].digits.size < 1000)
  fibonacci_sequence << fibonacci_sequence[-1] + fibonacci_sequence[-2]
end

puts(fibonacci_sequence.size)

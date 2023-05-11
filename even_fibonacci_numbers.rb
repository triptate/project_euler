# https://projecteuler.net/problem=2

max = 4_000_000

fibonacci_sequence = [1, 2]

# assumes that there are at least 2 digits in the array
def next_fibonacci_number(seq)
  seq[-1] + seq[-2]
end

while (next_fibonacci_number(fibonacci_sequence) < max)
  fibonacci_sequence << next_fibonacci_number(fibonacci_sequence)
end

puts(fibonacci_sequence.map { |n| n if n % 2 == 0 }.compact.sum)

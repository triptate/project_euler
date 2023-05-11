# https://projecteuler.net/problem=14

max = 1_000_000

num_with_longest_chain = 0
chain_length = 0

(2...max).each do |n|
  chain = []
  tmp = n
  while (tmp > 1)
    chain << tmp
    if tmp % 2 == 0
      tmp /= 2
    else
      tmp = 3 * tmp + 1
    end
  end
  if chain.size > chain_length
    num_with_longest_chain = n
    chain_length = chain.size
  end
end

puts(num_with_longest_chain)

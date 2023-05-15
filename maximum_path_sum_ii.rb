# https://projecteuler.net/problem=67
# my solution for maximum_path_sum_i was sufficiently efficient to solve this one as well

data = File.read('maximum_path_sum_ii_data.txt').split("\n").map { |row| row.split.map(&:to_i) }

results = {}

data.each_with_index do |row, i|
  row.each_with_index do |col, j|
    node = [i, j]
    results[node] ||= col
    previous_nodes = []
    previous_nodes << [i - 1, j] if i > 0 && j < row.size - 1
    previous_nodes << [i - 1, j - 1] if i > 0 && j > 0
    previous_nodes.each do |previous_node|
      tmp = results[previous_node] + col
      results[node] = tmp if tmp > results[node]
    end
  end
end

puts(results.values.max)

# https://projecteuler.net/problem=15

square_size = 20

# paths_in_progress = [[[0,0]]]
# finished_path_count = 0

# this uses a breadth-first strategy to produce all of the paths
# it gets way too slow around step 20

# (1...square_size * 2).each do |step|
#   new_paths_in_progress = []
#   paths_in_progress.each do |path|
#     last_node = path[-1]
#     if last_node[0] == square_size - 1
#       finished_path_count += 1
#     else
#       tmp = path.dup
#       tmp << [last_node[0] + 1, last_node[1]]
#       new_paths_in_progress << tmp
#     end
#     if last_node[1] == square_size - 1
#       finished_path_count += 1
#     else
#       tmp = path.dup
#       tmp << [last_node[0], last_node[1] + 1]
#       new_paths_in_progress << tmp
#     end
#   end
#   paths_in_progress = new_paths_in_progress
# end

# puts(finished_path_count)

# path_data is in the format { step: { node: count_of_paths_to_node } }
path_data = { 0 => { [0, 0] => 1 } }

(1..square_size * 2).each do |step|
  path_data[step] = {}
  path_data[step - 1].keys.each do |node|
    if node[0] < square_size
      next_node = [node[0] + 1, node[1]]
      path_data[step][next_node] ||= 0
      path_data[step][next_node] += path_data[step - 1][node]
    end
    if node[1] < square_size
      next_node = [node[0], node[1] + 1]
      path_data[step][next_node] ||= 0
      path_data[step][next_node] += path_data[step - 1][node]
    end
  end
end

puts(path_data[square_size * 2])

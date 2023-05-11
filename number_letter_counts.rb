# https://projecteuler.net/problem=17

count_map = {
  1 => 'one'.length,
  2 => 'two'.length,
  3 => 'three'.length,
  4 => 'four'.length,
  5 => 'five'.length,
  6 => 'six'.length,
  7 => 'seven'.length,
  8 => 'eight'.length,
  9 => 'nine'.length,
  10 => 'ten'.length,
  11 => 'eleven'.length,
  12 => 'twelve'.length,
  13 => 'thirteen'.length,
  14 => 'fourteen'.length,
  15 => 'fifteen'.length,
  16 => 'sixteen'.length,
  17 => 'seventeen'.length,
  18 => 'eighteen'.length,
  19 => 'nineteen'.length,
  20 => 'twenty'.length,
  30 => 'thirty'.length,
  40 => 'forty'.length,
  50 => 'fifty'.length,
  60 => 'sixty'.length,
  70 => 'seventy'.length,
  80 => 'eighty'.length,
  90 => 'ninety'.length,
}

(21..99).each do |idx|
  count_map[idx] ||= count_map[idx / 10 * 10] + count_map[idx % 10]
end

(100...1000).map do |idx|
  count_map[idx] = count_map[idx / 100] + 'hundred'.length
  if idx % 100 > 0
    count_map[idx] += 'and'.length
    count_map[idx] += count_map[idx % 100]
  end
end

# obviously could be more clever about handling the thousands, but this is expedient
puts(count_map.values.sum + 'onethousand'.length)

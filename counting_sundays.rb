# https://projecteuler.net/problem=19

# ruby has a built-in Time class that could solve this problem with little effort
# but it seems like doing it that way would defeat the purpose
class Date
  def initialize(y, m, d)
    @year = y
    @month = m
    @day = d
  end

  def sunday?
    days_since_jan_1_1900 % 7 == 6
  end

  private

  def days_since_jan_1_1900
    (1900...@year).map { |y| days_in_year(y) }.sum + days_since_beginning_of_year
  end

  private

  def days_since_beginning_of_year
    (1...@month).map { |m| days_in_month(m) }.sum + @day
  end

  def days_in_month(m)
    case m
    when 4, 6, 9, 11 then 30
    when 2 then is_leap_year?(@year) ? 29 : 28
    else 31
    end
  end

  def is_leap_year?(y)
    y % 4 == 0 && (y % 100 != 0 || y % 400 == 0)
  end

  def days_in_year(y)
    is_leap_year?(y) ? 366 : 365
  end
end

count = 0
(1901..2000).each do |y|
  (1..12).each do |m|
    count += 1 if Date.new(y, m, 1).sunday?
  end
end

puts(count)

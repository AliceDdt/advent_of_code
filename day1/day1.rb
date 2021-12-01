@file = File.open('input.txt')
@file_data = @file.readlines(&:chomp).map(&:to_i)

def count_depth_increasing(data)
  data.each_cons(2).count { |prev_value, value| prev_value < value }
end

def count_sum_increasing
  sums = @file_data.each_cons(3).map(&:sum)
  count_depth_increasing(sums)
end

puts count_depth_increasing(@file_data)
puts count_sum_increasing

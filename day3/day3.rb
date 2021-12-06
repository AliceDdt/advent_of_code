@input_data = File.readlines('input.txt', chomp: true).map(&:chars)
reverse_data = @input_data.transpose

gamma_rate = reverse_data.map do |row|
  row.max_by { |bit| row.count(bit) }.to_s
end.join.to_i(2)

epsilon_rate = reverse_data.map do |row|
  row.min_by { |bit| row.count(bit) }.to_s
end.join.to_i(2)

power_consumption = gamma_rate * epsilon_rate

tab = data.select do |row|
  row.map { |bit| bit == gamma_rate[bit] }
end

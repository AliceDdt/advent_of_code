array =
  %w[00100
     11110
     10110
     10111
     10101
     01111
     00111
     11100
     10000
     11001
     00010
     01010]

data = array.map(&:chars)
reverse_data = data.transpose

data.select do |row|
  row.max { |bit| row.count(bit) }
end
data = reverse_data.map do |row|
  row.max { |bit| row.count(bit) }
end

gamma_rate = reverse_data.map do |row|
  row.max_by { |bit| row.count(bit) }.to_s
end

tab = data.select do |row|
  row.map { |bit| bit  == gamma_rate[bit]}
end

tab.select do |row|
  row[0]]}[1] == gamma_rate[1]
end
data.select do |row|
  row[i][bit] == gamma_rate[i]
end

data.select do |row|
  row.select { |i| row[i] == gamma_rate[i] }
end

# p [input, input].each_with_index.map { |n, s|
#     n[0].size.times do |i|
#       break if n.size <= 1

#       n = n.filter { |b| b[i] == (n.map { _1[i] }.sort[n.size >> 1] ^ s) }
#     end

#     n[0].join.to_i(2)
#   }.inject :*

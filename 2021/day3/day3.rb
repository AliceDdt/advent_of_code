require 'pry'

input_data = File.readlines('input.txt', chomp: true).map(&:chars)
reverse_data = input_data.transpose

gamma_rate = reverse_data.map do |row|
  row.max_by { |bit| row.count(bit) }.to_s
end.join.to_i(2)

epsilon_rate = reverse_data.map do |row|
  row.min_by { |bit| row.count(bit) }.to_s
end.join.to_i(2)

power_consumption = gamma_rate * epsilon_rate


def o2(input_data)
  input_data2 = input_data.dup
  input_data.each_with_index do |_line, index|
    input_data2 = input_data2.select do |row|
      data = input_data2.transpose[index]

      row[index] == max(data)
    end
    
    break if input_data2.size <= 1
  end
  input_data2
end

def co2(input_data)
  input_data2 = input_data.dup
  input_data.each_with_index do |_line, index|
    input_data2 = input_data2.select do |row|
      data = input_data2.transpose[index]

      row[index] == min(data)
    end

    break if input_data2.size <= 1
  end
  input_data2
end

def max(data)
  if data.count('1') == data.count('0')
    '1'
  else
    data.max_by {|bit| data.count(bit)}
  end
end

def min(data)
  if data.count('1') == data.count('0')
    '0'
  else
    data.min_by {|bit| data.count(bit)}
  end
end

life_support = o2(input_data).join.to_i(2) * co2(input_data).join.to_i(2)
puts life_support
#puts "life support rating: #{o2(input_data) * co2(input_data)}"

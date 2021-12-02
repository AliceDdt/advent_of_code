######## solution 1 for part 1 - first try
def sum_data(data, element)
  direction = data.select { |value| value.include?(element) }
  direction.map { |value| value[1].to_i }.sum
end

@file = File.open('input.txt')
@file_data = @file.readlines(chomp: true).map(&:split)

@forward = sum_data(@file_data, 'forward')
@up = sum_data(@file_data, 'up')
@down = sum_data(@file_data, 'down')

@position = (@down - @up) * @forward

# ########solution 2 for part 1 & part 2

@file = File.open('input.txt')
@file_data = @file.readlines(chomp: true).map(&:split)

@instructions = @file_data.map { |direction, value| [direction, value.to_i] }

def simple_instructions_part1(horizontal = 0, depth = 0)
  @instructions.each do |direction, value|
    case direction
    when 'forward'
      horizontal += value
    when 'up'
      depth -= value
    when 'down'
      depth += value
    end
  end

  horizontal * depth
end

def complex_instructions_part2(horizontal = 0, depth = 0, aim = 0)
  @instructions.each do |direction, value|
    case direction
    when 'forward'
      horizontal += value
      depth += aim * value
    when 'up'
      aim -= value
    when 'down'
      aim += value
    end
  end

  horizontal * depth
end

puts "Result part 1: #{simple_instructions_part1}"
puts "Result part 2: #{complex_instructions_part2}"

require 'pry'

def part1
  proceed_commands { |arrays, from, count| arrays[from-1].shift(count).reverse }
end


def part2
  proceed_commands { |arrays, from, count| arrays[from-1].shift(count) }
end

def proceed_commands
  stacks, instructions = input

  s = stacks.map(&:chars)

  arrays = s.last.each_with_object([]).with_index do |(value,array), index|
    next if value.to_i == 0

    array << s[..-2].filter_map do |c|
      c[index] if c[index] != ' '
    end
  end

  commands = instructions.map { |e| e.split.select { |i| i.to_i != 0 }.map(&:to_i) }

  commands.each do |count, from, to|
    arrays[to - 1].unshift(*yield(arrays, from, count))
  end

  arrays.map(&:first).join
end

def input
  data = File.read('input.txt').split("\n\n")
  array = data.map {|i| i.lines(chomp: true)}
end

puts part1
puts part2
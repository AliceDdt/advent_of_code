data = File.readlines('input.txt', chomp: true)

def part1(data)
  data.count do |str| 
    array = str.split(',').map do |s|
      s.split('-').map(&:to_i)
    end

    base = array.map  { Range.new(*_1).to_a }

    base.include?(base[0] & base[1])
  end
end

def part2(data)
  data.count do |str| 
    array = str.split(',').map do |s|
      s.split('-').map(&:to_i)
    end

    base = array.map  { Range.new(*_1).to_a }

    (base[0] & base[1]).any?
  end
end

puts part1(data)
puts part2(data)
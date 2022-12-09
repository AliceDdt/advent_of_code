data = File.readlines('input.txt', chomp: true)

def part1(data)
  toto(data) { |base| base.include?(base[0] & base[1])}
end

def part2(data)
  toto(data) { |jm| (jm[0] & jm[1]).any? }
end

def toto(data)
  data.count do |str| 
    array = str.split(',').map do |s|
      s.split('-').map(&:to_i)
    end

    base = array.map  { Range.new(*_1).to_a }

    yield(base)
  end
end

puts part1(data)
puts part2(data)
data = File.readlines('input.txt', chomp: true)

ALPHABET = [
  nil, 'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
  'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'
].freeze

def part1(data)
  data.map do |str|
    common_items = find_common_items(str)
    find_priority(common_items)
  end.flatten.sum
end

def part2(data)
  data.each_slice(3).map do |a,b,c|
    common_items = a.chars.to_set & b.chars.to_set & c.chars.to_set
    find_priority(common_items)
  end.flatten.sum
end

def find_common_items(str)
  first_half, second_half = str.split(/(?<=\A.{#{str.size/2}})/)
  first_half.chars.to_set & second_half.chars.to_set
end

def find_priority(items)
  items.to_a.map { |i| ALPHABET.find_index(i) }
end

puts part1(data)
puts part2(data)
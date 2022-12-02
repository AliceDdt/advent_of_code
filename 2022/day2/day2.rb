data = File.readlines('input.txt', chomp: true).map(&:chars)
data = data.map {|a| a.reject { |e| e == " " }}

DRAW= [['A','X'], ['B','Y'], ['C','Z']].freeze

WIN=[['A','Y'], ['B','Z'], ['C','X']].freeze

LOSS=[['A','Z'], ['B','X'], ['C','Y']].freeze

VALUES= { X: 1, Y: 2, Z: 3 }

def calculate_score(data)
  score = []

  data.map do |array|
    if WIN.include?(array)
      score << VALUES[array[-1].to_sym] + 6
    elsif DRAW.include?(array)
      score << VALUES[array[-1].to_sym] + 3
    elsif LOSS.include?(array)
      score << VALUES[array[-1].to_sym]
    end
  end

  score.sum
end

def apply_secret_strategy_guide(data)
  data.map do |array|  
            if array[-1] == 'X'
              LOSS.select { |a| a[0] == array[0] }.flatten
            elsif array[-1] == 'Y'
              DRAW.select { |a| a[0] == array[0] }.flatten
            elsif array[-1] == 'Z'
              WIN.select { |a| a[0] == array[0] }.flatten
            end
         end
end

puts calculate_score(data)
new_data = apply_secret_strategy_guide(data)
puts calculate_score(new_data)


@file = File.open('input.txt')
@data = @file.readlines(chomp: true).map { |s| s.split(' -> ') }
tab = a.select { |valeur1, valeur2| valeur1[0] == valeur2[0] || valeur1[-1] == valeur2[-1] }

a = tab.map { |a| a.map { |s| s.split(',').map(&:to_i) }
tab2 = tab.map { |i| points(i) }.flatten

result = tab2.group_by(&:itself).count { |_,value| value.count > 1}


def points(line)
  x, y = line.transpose.map(&:sort)

  if x.uniq.size == 1
    Range.new(*y).map { |i| "#{x[0]},#{i}" }
  elsif y.uniq.size == 1
    Range.new(*x).map { |i| "#{i},#{y[0]}" }
  end
end









# retirer les diagonales
a.select { |valeur1, valeur2| valeur1[0]== valeur2[0] || valeur1[-1] == valeur2[-1] }
tableau.select { |a| a[0] a[1] condition }

# comparer les chiffres de chaque côté de la virgule
# on veut que le x de 1 soit égale au x de 2
# OU
# y1 == y2

x1 = valeur1[0]
y1 = valeur1[-1]
x2 = valeur2[0]
y2 = valeur2[-1]

# [
#  ["0,9", "5,9"], => ["0,9", "1,9", "2,9", "3,9", "4,9", "5,9"]
#  ["9,4", "3,4"],
#  ["2,2", "2,1"],
#  ["7,0", "7,4"],
#  ["0,9", "2,9"],
#  ["3,4", "1,4"],
# ]

#   0123456789
# 0 .......1..
# 1 ..1....1..
# 2 ..1....1..
# 3 .......1..
# 4 .112111211
# 5 ..........
# 6 ..........
# 7 ..........
# 8 ..........
# 9 222111....

matrix = [
  [.......1..],
  [..1....1..]
]

matrix[2][1]

value = (valeur1..valeur2).to_a

array.map { |a| Range.new(*a.sort).to_a }


def points(line)
  x, y = line.transpose.map(&:sort)

  if x.uniq.size == 1
    Range.new(*y).map { |i| "#{x[0]},#{i}" }
  elsif y.uniq.size == 1
    Range.new(*x).map { |i| "#{i},#{y[0]}" }
  end
end

array.map { |a| a.map { |s| s.split(',') } }

#count

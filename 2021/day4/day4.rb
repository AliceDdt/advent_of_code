input_data = File.open('input.txt').read.split("\n\n").map{ |s| s.lines.map(&:chomp)}

draw = input_data[0].map { |n| n.split(",")}.flatten

boards = input_data[1..].map { |b| b.map {|n| n.split(" ")}}

#à chaque fois qu'on trouve l'occurence remplacer par une string vide. 
#à la fin du tableau draw comparer si il y a une ligne ou une colonne vide (avec transpose)
def find_value

  draw.each do |value|
    if 


boards.map do |b|
   b.find do |v|
   v == draw[0]
end
end
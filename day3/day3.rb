@file = File.open('input.txt')
@file_data = @file.readlines(chomp: true)

@data = @file_data.map { |a| a.split(//).map(&:to_i) }
@data.map do |value, i|
  value[i]
end
# ça me retourne un tableau avec tous les 1ers chiffres de chaque ligne seulement
# alors que je voudrais un tableau par colonne
# une fois que les colonnes sont en tableau, faire un max_by par colonne ?

data = File.read('input.txt').split(/\n\n/)

def total_calories_per_elf(data)
  data.map { |e| e.split(/\n/).map(&:to_i).sum}
end

elf_with_max_calories = total_calories_per_elf(data).max

top_three_total_calories = total_calories_per_elf(data).max(3).sum

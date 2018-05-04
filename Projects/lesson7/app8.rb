print "Сколько вам лет?"
y = gets.to_i

print "Хотите играть? (Y/N)"
x = gets.strip.capitalize

if y >= 18 && x == "Y"
  puts "Хорошо поиграем"
end
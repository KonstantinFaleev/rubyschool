print "Хотите поиграть ?"
a = gets.strip.capitalize

if a == "Y"
  puts "Окей , поиграем !"
elsif a == "N"
  puts "Ну и не надо!"
else
  puts "Ошибка , не могу понять ваше желание"
end


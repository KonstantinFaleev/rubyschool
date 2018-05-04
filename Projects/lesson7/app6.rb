print "Сколько гостей к вам прийдет?"
n = gets.to_i

if n == 1
  puts "Прийдет один гость"
end

if n == 2
  puts "Прийдет два гостя"
end

if n > 2
  puts "Будет много гостей"
end

if n != 0
  puts "Отлично, кто-то будет!"
end
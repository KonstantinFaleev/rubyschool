x = rand(1..100)

t = 10

1.upto(t) do |n|
  print "Я загадал число, угадай какое ? (от 1 до 100) Попытка: #{n}. Осталось попыток: #{t - n + 1} :"
  a = gets.to_i
  if a == x
    puts "Угадал!"
    exit
  elsif x > a
    puts "Нет, больше !"
  elsif x < a
    puts "Нет, меньше !"
  end
end
#puts "По секрету я загадал #{x}"

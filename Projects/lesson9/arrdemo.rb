arr = [1, 22, 44]

arr << 54
arr << 45

puts arr

arr = []
while 2 + 2 == 4
  print "Введите ваш любимый цвет(или stop для выхода): "
  color = gets.strip

  if color == "stop"
    puts arr.uniq
    exit
  end

  arr << color
end


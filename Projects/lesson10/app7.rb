arr = []

loop do

  arr2 = []

  print "Введите имя: "
  name = gets.strip

  if name == ""
    break
  end

  print "Введите возраст: "
  age = gets.to_i



  arr2 << name
  arr2 << age
  arr << arr2

end

x = 0
arr.each do |item|
  x = x + 1
  puts "#{x}. #{item[0]} #{item[1]}"
end


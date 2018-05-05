print "Введите А:"
a = gets.to_f

print "Введите B:"
b = gets.to_f

print "Что будем делать? (+-*/)"
op = gets.strip

if op == "/" && b == 0
  puts "На 0 делить нельзя"
  exit
end

result = 0

if op == "+"
  result = a + b
end

if op == "-"
  result = a - b
end

if op == "*"
  result = a * b
end

if op == "/"
  result = a / b
end

puts "Результат: #{a} #{op} #{b} = #{result}"

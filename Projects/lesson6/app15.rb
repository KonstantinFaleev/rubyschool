print "Сколько лет будем копить: "
n = gets.to_i

print "Какую сумму будем откладывать в месяц: "
x = gets.to_i

s = 0
1.upto(n) do |n|
  1.upto(12) do |mm|
    s = s + x
    puts "Год #{n} месяц #{mm} ,отложено: #{s}"
  end
end
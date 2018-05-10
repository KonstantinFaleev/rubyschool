hh = {'dog' => ['cобака', 'пес'],'cat' => ['кошка', 'кот'], 'girl' => ['девушка']}

x = 0
hh.each_value do |value|
  x = x + value.size
  puts "Количество переводов: #{value.size}"
end
puts "Всего переводов: #{x}"

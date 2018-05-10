hh = {'dog' => ['cобака', 'пес'],'cat' => ['кошка', 'кот'], 'girl' => ['девушка']}

hh.each_key do |key|
  puts "Ключ: #{key}"
end

x = 0
hh.each_value do |value|
  x = x + value.size
  puts "Количество переводов: #{value.size}"
end
puts x

hh.each_value {|value| puts value }
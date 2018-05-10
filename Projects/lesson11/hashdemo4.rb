hh = {'dog' => ['cобака', 'пес'],'cat' => ['кошка', 'кот'], 'girl' => ['девушка']}

puts hh.values

puts hh.keys

hh.each_key do |key|
  puts "Ключ: #{key}"
end
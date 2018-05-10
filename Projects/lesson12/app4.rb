hh = {'dog' => ['cобака', 'пес'],'cat' => ['кошка', 'кот'], 'girl' => ['девушка']}

if hh.has_key? 'cat'
  puts "Есть кошка"
else
  puts "Нет такого слова в словаре"
end

if hh['cat']
  puts "Есть кошка !!!"
end
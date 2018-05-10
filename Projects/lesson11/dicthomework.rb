hh = {'dog' => ['cобака', 'пес'],'cat' => ['кошка', 'кот'], 'girl' => ['девушка']}

loop do

  print 'Введите слово: '
  word = gets.strip

  arr = hh[word]

  puts arr

  puts "Количество переводов слова: #{arr.size}"

end
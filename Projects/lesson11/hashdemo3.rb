hh = {'dog' => ['cобака', 'пес'],'cat' => ['кошка', 'кот'], 'girl' => ['девушка']}

loop do

  print 'Введите слово: '
  word = gets.strip

  b = hh[word]

  puts "Тип переменной: #{b.class}"

end
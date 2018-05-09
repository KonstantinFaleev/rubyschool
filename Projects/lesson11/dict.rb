dictionary = {'dog' => 'cобака','cat' => 'кошка', 'girl' => 'девушка'}

loop do

  print 'Введите слово(Enter to stop)'
  word = gets.strip

  translation = dictionary[word]
  puts "Перевод слова: #{translation}"

  if name == ''
    break
  end
end

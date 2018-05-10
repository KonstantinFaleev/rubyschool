# Хеш вида
# Выпавшая комбинация | количество денег, которое начисляем на баланс
hh = { 111 => 10,
       222 => 20,
       333 => 30,
       444 => 40,
       555 => 50,
       666 => 60,
       777 => 1000,
       888 => 80,
       999 => 100 }

balance = 100

loop do
  puts "Press Enter to play..."
  gets

  a = rand(100..999)

    if hh[a]
      balance = balance + hh[a]
    else
      balance = balance - 1
    end

  # Сравнение и итерация через каждый ключ в хеше
  puts "Current combination: #{a}"
  puts "Your balance: #{balance} dollars"

end
print "Сколько вам лет?"
age = gets.to_i

print "Хотите играть? (Y/N)"
answer = gets.strip.capitalize

if age >= 18 && answer == "Y"
  puts "Хорошо поиграем"

  money = 100

  1000.times do

  puts "Введите Enter чтобы дернуть ручку"
  gets

  x = rand(0..9)
  y = rand(0..9)
  z = rand(0..9)

  puts "#{x} #{y} #{z}"

    if x == 0 && y == 0 && z == 0
      puts "Ваш баланс обнулен!"
      money = 0
    end

    if x == 1 && y == 1 && z == 1
      puts "Вам зачислено 10 долларов!"
      money = money + 10
      puts "Осталось денег: #{money} долларов"
    end

    if x == 2 && y == 2 && z == 2
      puts "Вам зачислено 20 долларов!"
      money = money + 20
      puts "Осталось денег: #{money} долларов"
    end

    if x == 3 && y == 3 && z == 3
      puts "Вам зачислено 10 долларов!"
      money = money + 30
      puts "Осталось денег: #{money} долларов"
    end

    if x == 4 && y == 4 && z == 4
      puts "Вам зачислено 10 долларов!"
      money = money + 40
      puts "Осталось денег: #{money} долларов"
    end

    if x == 5 && y == 5 && z == 5
      puts "Вам зачислено 50 долларов!"
      money = money + 50
      puts "Осталось денег: #{money} долларов"
    end

    if x == 6 && y == 6 && z == 6
      puts "Вы потеряли половину суммы!"
      money = money / 2
      puts "Осталось денег: #{money} долларов"
    end

    if x == 7 && y == 7 && z == 7
      puts "Вам зачислено 10 долларов!"
      money = money + 70
      puts "Осталось денег: #{money} долларов"
    end

    if x == 8 && y == 8 && z == 8
      puts "Вам зачислено 10 долларов!"
      money = money + 80
      puts "Осталось денег: #{money} долларов"
    end

    if x == 9 && y == 9 && z == 9
      puts "Вам зачислено 10 долларов!"
      money = money + 90
      puts "Осталось денег: #{money} долларов"
    end

    if x == 1 && y == 2 && z == 3
      puts "Вам зачислено 123 доллара!"
      money = money + 90
      puts "Осталось денег: #{money} долларов"
    end
  end
end
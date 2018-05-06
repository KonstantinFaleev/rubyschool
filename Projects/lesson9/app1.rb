# encoding: cp1251

print "������� ��� ���? "
age = gets.to_i

print "������ ������? (Y/N) "
answer = gets.strip.capitalize

if answer == "Y" && age >= 18
  puts "������, ��������!"

  money = 100

  add_money_proc = lambda { |sum, money|
    puts "��� ��������� #{sum} ��������"
    money + sum
  }

  sub_money_proc = lambda { |sum, money|
    puts "�� �������� #{sum} ��������"
    money - sum
  }

  actions =
      {
          "000" => lambda { |money|
            puts "��� ������ �������!"
            0
          },
          "111" => [10, add_money_proc],
          "222" => [20, add_money_proc],
          "333" => [30, add_money_proc],
          "444" => [40, add_money_proc],
          "555" => [50, add_money_proc],
          "666" => lambda { |money|
            puts "�� �������� �������� �����"
            money / 2
          },
          "777" => [70, sub_money_proc],
          "888" => [80, sub_money_proc],
          "999" => [90, sub_money_proc],
          "123" => [123, sub_money_proc],
      }

  1000.times do

    puts "������� Enter ����� ������� �����"
    gets

    num = rand(0..9).to_s + rand(0..9).to_s + rand(0..9).to_s

    puts "������ #{num}"

    if actions.has_key?(num)
      if actions[num].is_a?(Array)
        money = actions[num][1].call(actions[num][0], money)
      elsif actions[num].is_a?(Proc)
        money = actions[num].call(money)
      end
    end

    puts "�������� �����: #{money} ��������"

    if money == 0
      puts "� ��� �� �������� �����"
      break
    elsif money < 0
      puts "�� ������� �� ���� ���������, ����� ������������ � ��������� � �����"
    end
  end
end
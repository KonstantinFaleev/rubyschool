@a = 1

def get_password
  @a = 2
  print 'Type password'
  gets.chomp * 3
end

pass = get_password
puts "Был введен пароль: #{pass}"
puts "Переменная a = #{@a}"
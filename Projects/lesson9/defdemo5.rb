@a = 1

puts "Первый раз: #{@a}"

def myproc
  @a = 2
end

puts "Второй раз: #{@a}"

myproc

puts "Третий раз: #{@a}"

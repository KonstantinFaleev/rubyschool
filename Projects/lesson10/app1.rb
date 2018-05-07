def get_command
  actions = [:left, :right, :up, :down]

  x = rand(0..3)

  return actions[x]
end

command = get_command

puts "Получена команда: #{command}"

if command == :left
  puts "Робот едет влево"
end

if command == :right
  puts "Робот едет вправо"
end

if command == :up
  puts "Робот едет вверх"
end

if command == :down
  puts "Робот едет вниз"
end
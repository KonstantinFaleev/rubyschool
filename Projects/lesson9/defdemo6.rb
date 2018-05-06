def get_command
  x = rand(1..4)

  if x == 1
    cmd = :left
  end

  if x == 2
    cmd = :right
  end

  if x == 3
    cmd = :up
  end

  if x == 4
    cmd = :down
  end

  cmd
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
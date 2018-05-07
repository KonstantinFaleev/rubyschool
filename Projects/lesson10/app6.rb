arr = []

loop do

  print "Кого добавить в список?"
  name = gets.strip

  if name == ""
    break
  end

  arr << name

end

x = 0
arr.each do |name|
  x = x + 1
  puts "#{x}. #{name}"
end


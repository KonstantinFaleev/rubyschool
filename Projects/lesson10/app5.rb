arr = ["walt", "hank", "jr", "jessie", "lidia"]
loop do

  x = 0
  arr.each do |name|
    x = x + 1
    puts "#{x}. #{name}"
  end

  print "Кого удалить (порядковый номер)?"
  n = gets.to_i

  arr.delete_at n - 1

end

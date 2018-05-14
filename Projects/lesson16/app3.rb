add_10 = lambda { |x| x + 10 }
add_20 = lambda { |x| x + 20 }
sub_5 = lambda { |x| x - 5 }

balance = 1000

hh = { 111 => add_10, 222 => add_10, 333 => add_20, 444 => add_20, 555 => add_20, 666 => add_10, 777 => add_20, 888 => add_20, 999 => sub_5 }

loop do

  x = rand(100..999)
  puts "Combination: #{x}"

  if hh[x]
    f = hh[x]
    balance = f.call balance
    puts 'Lambda called'
  end

  puts "Balance #{balance}"
  puts 'Press Enter to continue...'
  gets
end

arr = %w[Mike Bill Jardin John]

arr.each_with_index do |name, i|

  puts "#{i + 1}. #{name}"

end
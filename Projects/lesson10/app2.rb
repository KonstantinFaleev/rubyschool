arr = ["walt", "hank", "jr", "jessie", "lidia", 21]
#arr = %w[walt hank jr jessie lidia 21]

x = 0
arr.each do |name|
  x = x + 1
  puts "#{x} #{name}"
end
#puts arr
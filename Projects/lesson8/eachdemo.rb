(-2..2).each { |x| puts x }

puts "========="

(0..5).each { |x| puts x }

puts "========="

(10..11).each { |x| puts x }

puts "========="

(10...12).each do |x|
   puts x
end

puts "========="

("a".."b").each do |x|
  puts x
end

puts "========="

("aa".."bb").each do |x|
  puts x
end

puts "========="

("cde".."fff").each do |x|
  puts x
end

puts "========="

("10cde".."20fff").each do |x|
  puts x
end
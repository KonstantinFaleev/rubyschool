require 'sqlite3'

db = SQLite3::Database.new 'barbershop.db'

db.execute 'select * from Users' do |row|
  puts "#{row[1]} записался на #{row[3]}"
  puts '========'
end

db.execute 'select * from Users' do |row|
  print row[1]
  print "\t-\t"
  puts row[3]
  puts '========'
end
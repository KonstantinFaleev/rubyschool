print "(R)ock, (S)cissors, (P)aper? "
s = gets.strip.capitalize

if s == "R"
  user_choice = :rock
elsif s == "S"
  user_choice = :scissors
elsif s =="P"
  user_choice = :paper
else
  puts "Can't understand what you want, sorry..."
  exit
end

arr = [:rock, :scissors, :paper]

computer_choice = arr[rand(0..2)]

if computer_choice == user_choice
  puts "Nobody wins"
end


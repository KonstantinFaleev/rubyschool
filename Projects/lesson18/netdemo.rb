require 'net/http'

response = Net::HTTP.get 'rubyschool.us', '/router'
puts response
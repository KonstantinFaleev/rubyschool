#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"
end

get '/about' do
  @error = 'something wrong!'
  erb :about
end

get '/contacts' do
  erb :contacts
end

get '/visit' do
  erb :visit
end

post '/visit' do
  @username = params[:username]
  @phone = params[:phone]
  @datetime = params[:datetime]
  @barber = params[:barber]
  @color = params[:color]

  hh = { :username => 'Введите имя',
         :phone => 'Введите телефон',
         :datetime => 'Введите дату и время' }
  hh.each do |key, value|
    if params[key] == ''
      @error = hh[key]
      return erb :visit
    end
  end
  @title = 'Thank you!'
  @message = "Dear #{@username}, we'll be waiting for you at #{@datetime} "

  f = File.open './public/users.txt', 'a'
  f.write "User: #{@username}, Phone: #{@phone}, Date and time: #{@datetime}, Name barber: #{@barber}, Color: #{@color}"
  f.close
  erb :message
end
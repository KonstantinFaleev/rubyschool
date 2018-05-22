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

  if @username == ''
    @error = 'Введите имя'
  end

  if @phone == ''
    @error = 'Введите номер телефона'
  end

  if @datetime ==''
    @error = 'Неправильная дата и время'
  end

  if @error != ''
    return erb :visit
  end

  @title = 'Thank you!'
  @message = "Dear #{@username}, we'll be waiting for you at #{@datetime} "

  f = File.open './public/users.txt', 'a'
  f.write "User: #{@username}, Phone: #{@phone}, Date and time: #{@datetime}, Name barber: #{@barber}, Color: #{@color}"
  f.close
  erb :message
end
#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'pony'
require 'sqlite3'

configure do
  @db = SQLite3::Database.new 'barbershop.db'
  @db.execute 'CREATE TABLE IF NOT EXISTS
       "Users"
       ("id" INTEGER PRIMARY KEY AUTOINCREMENT,
        "username" TEXT,
        "phone" TEXT,
        "datestamp" TEXT,
        "barber" TEXT,
        "color" TEXT);'
end

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
  @datestamp = params[:datestamp]
  @barber = params[:barber]
  @color = params[:color]

  hh = { :username => 'Введите имя',
         :phone => 'Введите телефон',
         :datestamp => 'Введите дату и время' }
  #hh.each do |key, value|
  #  if params[key] == ''
  #    @error = hh[key]
  #    return erb :visit
  #  end
  #end

  @error = hh.select {|key,_| params[key] == ""}.values.join(", ")
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

post '/contact' do
  Pony.mail(
      :name => params[:name],
      :mail => params[:mail],
      :body => params[:body],
      :to => 'a_lumbee@gmail.com',
      :subject => params[:name] + " has contacted you",
      :body => params[:message],
      :port => '587',
      :via => :smtp,
      :via_options => {
          :address              => 'smtp.gmail.com',
          :port                 => '587',
          :enable_starttls_auto => true,
          :user_name            => 'lumbee',
          :password             => 'p@55w0rd',
          :authentication       => :plain,
          :domain               => 'localhost.localdomain'
      })
  redirect '/visit'
end

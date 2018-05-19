require 'sinatra'

get '/' do
  erb :index
end

post '/' do
  @user_name = params[:user_name]
  @phone = params[:phone]
  @date_time = params[:date_time]

  @title = 'Thank you!'
  @message = "Dear #{@user_name}, we'll be waiting for you at #{@date_time} "

  f = File.open 'users.txt', 'a'
  f.write "User: #{@user_name}, Phone: #{@phone}, Date and time: #{@date_time}"
  f.close
  erb :message
end

post '/admin' do
  @login = params[:aaa]
  @password = params[:bbb]

  if @login == 'admin' && @password == 'secret'
    erb :create
  elsif @login == 'admin' && @password == 'admin'
    @message = 'Haha , nice try! Access denied!'
    erb :admin
  else
    @message = 'Access denied'
    erb :admin
  end
end

get '/create' do
  @logfile = File.read("users.txt")
  erb :create
end

require 'sinatra'

get '/' do
  erb :index
end

get '/contacts' do
@title = 'Contacts'
  @message = 'Phone number: 123456789'
  erb :message
end

get '/faq' do
  @title = 'FAQ'
  @message = 'Under construction'
  erb :message
end

get '/something' do
  @title = 'Something'
  @message = 'Blabla'
  erb :message
end

post '/' do
  @login = params[:aaa]
  @password = params[:bbb]

  if @login == 'admin' && @password == 'secret'
    erb :welcome
  elsif @login == 'admin' && @password == 'admin'
    @message = 'Haha , nice try! Access denied!'
    erb :index
  else
    @message = 'Access denied'
    erb :index
  end
end
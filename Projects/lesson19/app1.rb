require 'sinatra'

get '/' do
  erb :index
end

post '/' do
  @login = params[:aaa]
  @password = params[:bbb]
  @access_denied = "Access denied"

  if @login == 'admin' && @password == 'secret'
    erb :welcome
  else
  erb :access_denied
  end
end
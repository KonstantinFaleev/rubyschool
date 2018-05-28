
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'

def init_db
  @db = SQLite3::Database.new 'leprosorium.db'
  @db.results_as_hash = true
end

before do
  # Инициализация БД
  init_db
end

# Вызывается каждый раз при именении приложения:
# когда изменился код страницы и перезагрузилась страница
configure do
  # Инициализация БД
  init_db
  # создает таблицу если таблица существует
  @db.execute 'CREATE TABLE IF NOT EXISTS
       "Posts"
       ("id" INTEGER PRIMARY KEY AUTOINCREMENT,
        "created_date" DATE,
        "content" TEXT
       );'
end

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"
end

get '/new' do
  erb :new
end

post '/new' do
  # Получаем переменную из пост запроса
  content = params[:content]
  if content.length <= 0
    @error = "Type post text"
    return erb :new
  end
  erb "You typed: #{content}"
end

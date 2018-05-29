
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
  @results = @db.execute 'select * from Posts order by id desc'
	erb :index
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
  # Сохранение данных в БД
  @db.execute 'insert into Posts (content, created_date) values (?, datetime())', [content]
  redirect to '/'
end

get '/details/:post_id' do
  # получаем переменную из url'a
  post_id = params[:post_id]
  # получаем список постов
  # (у нас будет только один пост)
  results = @db.execute 'select * from Posts where id = ?', [post_id]
  # выбираем этот один пост в переменную @row
  @row = results[0]
  # возвращаем представление details.erb
  erb :details
end
# обработчик пост запроса /details/...
# браузер отправляет данные на сервер , мы их принимаем
post '/details/:post_id' do
  # получаем переменную из url'a
  post_id = params[:post_id]
  # Получаем переменную из пост запроса
  content = params[:content]
  erb "You type comment #{content} for post #{post}"
end

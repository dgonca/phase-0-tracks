#require gems

require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/stati'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

#show students on home page

get '/' do 
	@students = db.execute("SELECT * FROM students")
	erb :home
end

#create new students via 
#a from

get '/students/new' do 
	"New student form will go here."
	erb :new_student
end

post '/students' do 
	db.execute("INSERT INTO students (name, campus, age) VALUES (?, ?, ?)", [params['name'], params['campus'], params['age'].to_i])
	redirect '/'
end

get '/location' do 
	@students = db.execute("SELECT * FROM students")
	erb :location
end

#add static resources
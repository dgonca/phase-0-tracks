# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("kittens.db")


# learn about fancy string delimiters


# create a kittens table (if it's not there already)


# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ('Bob', 10)")

# add LOOOOTS of kittens!
# so. many. kittens. 
#KittenExplosion


# explore ORM by retrieving data
# kittens = db.execute("SELECT * FROM kittens")
# kittens.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['age']}"
# end




#db = SQLite3::Database.new("kittens.db")
# db.results_as_hash = true
# create_table_cmd = <<-SQL
#   CREATE TABLE IF NOT EXISTS kittens(
#     id INTEGER PRIMARY KEY,
#     name VARCHAR(255),
#     age INT
#   )
# SQL
#db.execute(create_table_cmd)
# def create_kitten(db, name, age)
#   db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
# end

# 10000.times do
#   create_kitten(db, Faker::Name.name, 0)
# end



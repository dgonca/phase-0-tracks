require 'sqlite3'

#what program would make someone's life better? 
#or my life
#what do i need

#things to do, this week


#create a table for the next week
#add some things to do
#be able to run ruby and have user add more things to do as need be

#at the end of the week, delete the table and start over for the next week


todolist = SQLite3::Database.new("todolist.db")



create_list_cmd = <<-SQL

	CREATE TABLE IF NOT EXISTS list_for_the_week(

		id INTEGER PRIMARY KEY,
		day_of_week VARCHAR(255),
		level_of_importance INT,
		item_to_do VARCHAR(255),
		extra_info VARCHAR(255)

	)

SQL



todolist.execute(create_list_cmd)


def delete_list(db)
	p "Hey user it's Saturday, we're restarting your to do list for the next week"
	db.execute("DROP TABLE list_for_the_week")
end



def add_item(db)
	p "What item do you need to add to your list"
	item = gets.chomp
	p "What day of the week is this for?"
	d_o_w = gets.chomp
	p "What's the level of importance for this item?"
	importance = gets.chomp
	p "Is there any extra info you need for this to do list item?, if none skip the entry form."
	extra = gets.chomp

	db.execute("INSERT INTO list_for_the_week (day_of_week, level_of_importance, item_to_do, extra_info) VALUES (?, ?, ?, ?)", [d_o_w, importance, item, extra])

	# p "Here is your updated list for the week"
	# db.execute("SELECT * FROM list_for_the_week")

	# db

	p "Here is your updated list"
	p db.execute("SELECT * FROM list_for_the_week")
	
end

p "Hello user! We have created a structure for your to do list"
p "What day of the week is it?"
day = gets.chomp

if day == "Saturday" || day == "saturday"
	delete_list(todolist)

	p "Restart the program and say that it is now Sunday - you can start your week fresh"
else
	p "Do you need to create an item?"
	answer = gets.chomp

	if answer == "yes" || answer == "Yes"
		add_item(todolist)
	elsif answer == "no" || answer == "No"
		p "Here is your to do list"
		p todolist.execute("SELECT * FROM list_for_the_week")
	else
		p "Something is wrong with your answer"
	end
end



# p "Do you need to add an item? Yes or No"
# answer = gets.chomp
# case answer
# 	when answer = "yes"
# 		answer = "Yes"
# 	when answer = "no"
# 		answer = "No"
# end

# until answer = "No"
# 	add_item(todolist)
# 	p "Do you need to add another"
# end





# list_print.each do |item|
# 	p "#{item['id']} | #{item['day_of_week']} | #{item['item']} | #{item['level_of_importance']} | #{item['extra_info']}"
# end




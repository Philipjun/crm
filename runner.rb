require './contact'
require './rolodex'


class Runner
	def initializer
		@rolodex =Rolodex.new
	end

	def main_menu
		puts "1. Add a contact"
		puts "2. See all contacts"
		puts "3. Remove a contact"
		puts "4. Edit a contact"
    puts "0. To exit"

	end

	def add_contact
		puts "What is your first name?"
		name = gets.chomp
    puts "what is your last name?"
    lastname= gets.chomp
    puts "what is your email?"
    email = gets.chomp
    puts "notes"
    notes =gets.chomp

	end

	def show_contacts
		puts" All contacts"
		@rolodex.show_contacts
		puts "----------"
	end

	def remove_contact
		puts"Enter contact to be remmoved"
		id = gets.chomp.to_i
		@rolodex.remove_contact(id)
	end

	def edit_contact
		puts"ID to edit"
		id = gets.chomp.to_i
		puts "Enter new contact name"
		new_name= gets.chomp
		@rolodex.edit_contact(id, new)
	end

	def run
		done = false
		while !done 
		main_menu
		input= gets.chomp.to_i
			if input == 0
				done = true
			elsif  if input == 1
				add_contact
			elsif input == 2
				show_contacts
			elsif input ==3
				remove_contact
			elsif  input ==4
				edit_contact

  			

				end
			end
		end
	end
end

runner = Runner.new
runner.run

require './contact'
require './rolodex'


class Runner
	def initializer
		puts "CRM system"
		@rolodex =Rolodex.new
	end

	def main_menu
		puts "[1] Add a new contact"
  	puts "[2] Modify an existing contact"
  	puts "[3] Delete a contact"
  	puts "[4] Display all the contacts"
	  puts "[5] Display an attribute"
	  puts "[6] Exit"
	  puts "Enter a number: "
end

	

	def add_contact

			puts "What is your first name?"
		first_name = gets.chomp

	   puts "What is your last name?"
	   last_name = gets.chomp

	   puts "What is your email?"
	   email =gets.chomp

	   puts "Place notes"
	   notes =gets.chomp
	   @rolodex.add_contact(first_name, last_name, email, note)

	end

	def display_id
		@rolodex.display_id
	end


	def edit_contact
		puts "ID to edit"
			display_id
			id = gets.chomp.to_i
			puts "What do you want to edit?"
			puts "(1) First Name"
			puts "(2) Last Name"
			puts "(3) Email"
			puts "(4) Note"
			puts "(0) Go back to Main Menu"
		input = gets.chomp.to_i
				if input != 0
				puts "Are you sure?"
				new_info =gets.chomp
			@rolodex.edit_contact(id, new_name, new_info)
			puts "new info"
				@rolodex.display_target(id)
	end
end

	def delete_contact
		puts "Enter contact's ID to be removed"
		id = gets.chomp.to_i
		@rolodex.delete_contact(id)
		puts "User #{id} is deleted"
	end

	def display_all_contacts
		@rolodex.display_all_contacts
	end

	def display_attribute
			puts "Which attribute do you want to display?"
			puts "(1) First Name"
			puts "(2) Last Name"
			puts "(3) Email"
			puts "(4) Note"
			puts "(0) Go back to Main Menu"
			input =gets.chomp.to_i
			@rolodex.display_attribute(input)
			puts"----------"

	end

	def run
		done = false
		while !done 
		main_menu
		input= gets.chomp.to_i
			if input == 0
				done = true

			elsif input == 1
				add_contact
			elsif input == 2
				modify_contact
			elsif input == 3
				delete_contact
			elsif input == 4
				display_all_contacts
			elsif input == 5
				display_attribute
			elsif input == 6
				done = true
			else
				puts "Please enter the correct input"


				end
			end

		end
	end


phil = Runner.new
phil.run

require './rolodex'
require './contact'



class Runner
	def initializer
		puts "CRM system"
		@rolodex = Rolodex.new
	end

	def main_menu
		puts "[1] Add a new contact name"
    puts "[2] Display a contact"
    puts "[3] Edit a contact"
    puts "[4] Display all the contacts"
    puts "[5] Delete a contact"
    puts "[6] Add notes"
    puts "[0] Exit"
	end

	

	def add_contact

		puts "What is your first name?"
		first_name = gets.chomp
		
	
		puts "Enter last name"
		last_name =gets.chomp

		puts "Enter email"
		email =gets.chomp
	 
	 	puts "Enter notes"
	  notes = gets.chomp

	   @rolodex = Rolodex.new
	   @rolodex.add_contact(first_name, last_name, email, notes)

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
		puts "Are you sure? Enter 'Y' or 'N' " 

		confirmation = gets.chomp
		if confirmation == 'Y'
			@rolodex.delete_contact(id)
		elsif  confirmation == 'N'
			return ""
		end		
	end

	def display_all_contacts
		puts "-----------"
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
			@rolodex.display_attribute(id)
			puts"----------"

	end

	def add_note
		puts"Enter ID to create new note"
		id =gets.chomp.to_i
		@rolodex.add_note(id)
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
				display_all_contacts
			elsif input == 3
				edit_contact
			elsif input == 4
				display_attribute
			elsif input == 5
				delete_contact
			elsif input == 6
					add_note
				elsif input == 0
				done = true
			else
				puts "Please enter the correct input"


				end
			end

		end
	end


phil = Runner.new
phil.run

class Rolodex

	def initialize
  	@contacts =[]
    @id = 1000
	end

	def add_contact(first_name, last_name, email, notes)
  	contact = Contact.new
  	contact.first_name = first_name
    contact.last_name = last_name
    contact.email = email
    contact.note = notes
  	@contacts << contact
    puts "new contact created"
    puts "First name: #{contact.first_name}\nLast Name: #{contact.last_name}\nEmail: #{contact.email}\nNotes: #{contact.note}"
	end


	def display_all_contacts
  	@contacts.each do |contact|
    	puts contact
    end
  end 

      
   def display_id
      display = nil
      @contacts.each {|contact| puts "ID: #{contact.id}\nFirst Name: #{contact.first_name}\nLast Name: #{contact.last_name}\n--\n"}
      puts display
    end

  def delete_contact(id)
    remove = nil
      @contacts.delete_if { |c| c.id == id} 
    end

    def add_note(id)
      @contact.each do |contact| if contact.id == id
        puts "add note"
        new_note = gets.chomp
        contact.notes.push
      end
    end
    
      
  def display_attribute(id)
      @contacts.each do |contact|
        if input == 1
          puts contact.first_name
        elsif input == 2
           puts contact.last_name
        elsif input == 3
          puts contact.note
        elsif input == 4
          puts contact.email
        elsif input == 0
         
          break
        end
      end
    end
end
  

	 
  def edit_contact(id, new_name)
		@contacts.each do |contact|
			if contact.id == id
				contact.name == new_name
			end
		@contacts.delete(result) if result !=nil
    end
  end


end


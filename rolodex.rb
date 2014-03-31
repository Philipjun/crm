class Rolodex

	def initialize
  	@contacts =[]
    @id = 1000
	end

	def add_contact (first_name, last_name, email, note)
  	contact = Contact.new
  	contact.first_name = first_name
    contact.last_name = last_name
    contact.email = email
    contact.note = note
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
      @contacts.each {|contact| puts "ID: #{contact.id}\nFirst Name: #{contact.first_name}\nLast Name: #{contact.last_name}\n--\n"}
    end

  def delete_contact(id)
      @contacts.delete_if { |c| c.id == id} 
    end
      
  def display_attribute(input)
      @contacts.each do |contact|
        if input == 1
          puts contact.id
        elsif input == 2
          puts contact.first_name
        elsif input == 3
          puts contact.last_name
        elsif input == 4
          puts contact.email
        elsif input == 5
          puts contact.note
        elsif input == 6
          break
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

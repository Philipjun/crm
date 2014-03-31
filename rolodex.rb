class Rolodex

	def initialize
  	@contacts =[]
    @id = 1000
	end

	def add_contact(name)
  	first = Contact.new
  	contact.name = contact
  	@contacts << contact
	end


	def display_all_contacts
  	@contacts.each do |contact|
    	puts contact
      
  	end
  end 

	def delete_contact(id)
  	  @contacts.delete_if { |c| c.id == id} 
    end
      
   def display_id
      @contacts.each do |contact| puts "ID: #{contact.id}\nFirst Name: #{contact.first_name}\nLast Name: #{contact.last_name}\n--\n"}
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


class Rolodex

	def initialize
  	contacts= []
	end

	def add_contact(name)
  	contact = Contact.new
  	contact.name = name
  	@contacts << contact
	end

	def display_all_contacts
  	@contacts.each do |contact|
    	puts contact
  	end
  end 

	def delete_contact(id)
  	@contacts.deleteif {|c| c.id == id}
	end

  def edit_contact(id, new_name)
		@contact.each do |contact|
			if contact.id ==id
				contact.name == new_name
			end
		@contacts.delete(result) if result !=nil
    end
 

  end

end

class Contact

	@@counter = 1000

attr_accessor :notes, :name, :id

	def initialize
		@id = Contact.get_id
	end
end

def to_s
	"Name: #{@id}\nName: #{@name}\n #{@notes}"
end

def self.get_id
	@@counter += 1
	@@counter
	end

end
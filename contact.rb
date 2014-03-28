class Contact

	attr_accessor :notes, :name, :id,

	@@counter = 1000

	def initialize
		@id = Contact.get_id
	end

	def first_name

	end

	def last_name

	end

	def email

		end

	def notes

	end

	def id

	end



	def to_s
		"Name: #{@id}\nName: #{@name}\n #{@notes}"
	end

	def self.get_id
		@@counter += 1
		@@counter
	end

end
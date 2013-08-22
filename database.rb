class Database
	@contacts = []
	@id = 1000

	def self.add_contact(contact)
		contact.id = @id
		#puts contact.id
		@contacts << contact
		#puts @contacts.inspect
		@id += 1
		#puts @id
		puts "Contact Added: #{@contacts}"
	end

	def self.contacts
		@contacts
	end

	def self.find_contact(email)
		@contacts.each do |contact| 
			if email == contact.email
				p contact
			end
		end
	end
end
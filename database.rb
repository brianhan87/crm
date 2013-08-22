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
	end

	def self.contacts
		@contacts
	end

end

class Contact

	attr_accessor :first_name, :last_name, :id
	attr_reader :email
	attr_writer :note

	def initialize(
		first_name, 
		last_name, 
		email, 
		note
	)
		puts "initialized"
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note
	end
end


# contact.email => "brianhan87usa@gmail.com"
# contact.note("Buy him a present.")

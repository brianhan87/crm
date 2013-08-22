
class Contact
	def initialize(first_name, last_name, email, note)
		@first_name = first_name
		@last_name = last_name
		@email = email
		@note = note
	end

	def add_new_contact
		print "Enter First Name: "
		first_name = gets.chomp
		print "Enter Last Name: "
		last_name = gets.chomp
		print "Enter Email Address: "
		email = gets.chomp
		print "Enter a Note: "
		note = gets.chomp
		contact = Contact.new(first_name, last_name, email, note)
	end
end

class Database
	@contacts = []
	@id = 1000

	def self.add_contact(contact)
		contact.id = @id
		@contacts << contact
		@id += 1
	end

	def self.contacts
		@contacts
	end
end

class CRM

	def initialize(name)
		@name = name
		# now I can access name as @name outside of this method
	end

	def whats_my_name_again
		"Oh, your name is " + @name
	end

	def start # coordinator
		main_menu
		add_contact
		modify_contact
		delete_contact
		display_all
		display_attribute
		exit
	end

	def print_main_menu
		puts "* * * * * * * * * * * *"
		puts "*        C R M        *"
		puts "* * * * * * * * * * * *"
		puts "\n"
		puts "[1] add_contact"
		puts "[2] modify_contact" 
		puts "[3] delete_contact"
		puts "[4] display_all"
		puts "[5] display_attribute"
		puts "[6] exit"
		puts "Enter a number: "
	end

	def main_menu
		print_main_menu
		user_selected = gets.to_i
		call_option(user_selected)
	end

	def call_option(user_selected)
		add_new_contact               if user_selected == 1
		modify_existing_contact       if user_selected == 2
		delete_existing_contact       if user_selected == 3
		display_all_contacts          if user_selected == 4
		display_attribute_of_contacts if user_selected == 5
		exit_program                  if user_selected == 6
	end
end

session = CRM.new("Brian's CRM App") 
# synonymous with new, calling new is calling initialize
session.start

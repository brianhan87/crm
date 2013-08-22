require "./contact"
require "./database"

class CRM 

	def initialize(name)
		@name = name
		# now I can access name 
		# as @name outside of this method
	end

	def start # coordinator
		main_menu
		#add_contact
		#modify_contact
		#delete_contact
		#display_all
		#display_attribute
		exit
	end

	def print_main_menu
		puts "* * * * * * * * * * * *"
		puts "*        C R M        *"
		puts "* * * * * * * * * * * *"
		puts "\n"
		puts "[1] add_new_contact"
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
		
		case user_selected 
		when 1
			add_new_contact
		when 2
			modify_contact   
		when 3
			delete_contact
		when 4
			display_all_contacts  
		when 5
			display_attribute_of_contacts
		when 6
			exit_program 
		else
			puts "Please enter a number from 1 to 6"
			main_menu
		end
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
		contact = Contact.new(
			first_name, 
			last_name, 
			email, 
			note
		)
		Database.add_contact(contact)
	end

end

session = CRM.new("Brian's CRM App") 
# synonymous with new, calling new is calling initialize
session.start

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
		exit_program
	end

	def print_main_menu
		puts "~~~~~~~~~~~~~~~~~~~~~~~"
		puts "\n"
		puts "         C R M         "
		puts "\n"
		puts "~~~~~~~~~~~~~~~~~~~~~~~"
		puts "\n"
		puts "[1] add_new_contact"
		puts "[2] modify_contact" 
		puts "[3] delete_contact"
		puts "[4] display_all_contacts"
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
		#Database.display_all_contacts
		main_menu

	end

	def display_all_contacts
		contact_list = Database.display_all_contacts
		contact_list
		main_menu
	end

	def modify_contact
		contact_list = Database.display_all_contacts
		contact_list
		print "Enter email to choose a contact to modify: "
		email = gets.chomp
		contact = Database.find_all_contact(email)
		#puts "I'm in modify_contact"
		main_menu
	end

	def delete_contact
		Database.display_all_contacts
		puts "Enter email to DELETE a contact"
		email = gets.chomp
		Database.delete_contact(email)
		main_menu
	end

	def exit_program
		
		puts "End your session? (y/n)"
		finish = gets.chomp
		
		case finish
		when "y"
			exit
		when "n"
			main_menu
		else
			puts "Please make your choice (y/n)"
			exit_program
		end
	end
end

session = CRM.new("Brian's CRM App") 
# synonymous with new, calling new is calling initialize
session.start






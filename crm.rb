# crm

class CRM
	def initialize(name)
		puts "Okay, this CRM has the name " + name
	end

	def start
		main_menu
		add_contact
		modify_contact
		delete_contact
		display_all
		display_attribute
		exit
	end

	def print_main_menu
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

crm = CRM.new
crm.start

=begin
	def add_contact(first, last, email, note="")
		get first_name
		get last_name
		get email
		get_note # optional
		create new_contact with the info above
		set contact_id
	end

	def modify_contact
		get contact_id
			get yes or no to confirm selection
				if yes 
					change_id
					change_first_name
					change_last_name
					change_email
					change_note
				else
					return main_menu
				end
	end
=end

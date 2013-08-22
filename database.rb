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

	def self.find_all_contact(email)
		@contacts.each do |contact| 
			if email == contact.email
				puts "+++++++++++++++++++++++++"
				puts "[ 1 ][  ID    ] #{contact.id}"
				puts "[ 2 ][  NAME  ] #{contact.first_name} #{contact.last_name}" 
				puts "[ 3 ][  EMAIL ] #{contact.email}"
				puts "[ 4 ][  NOTE  ] '#{contact.note}'"
				puts "+++++++++++++++++++++++++"
			  puts "\n"
			  puts "Type number to change info"

			  user_selected = gets.to_i
			  p "user_selected : #{user_selected}"

		  	case user_selected
		  	when 1
		  		puts "Enter NEW ID: "
		  		contact.id = gets.to_i
		  		puts "[  S U C C E S S  ]"
		  		print "[  New Contact ID ]"
		  		puts " => [ #{contact.id} ]"
		  	when 2
		  		contact.name = "case 2 works"
		  	when 3
		  		contact.email = "case 3 works"
		  	when 4
		  		contact.note = "case 4 works"
		  	end
			end
		end
	end

	def self.display_all_contacts
		@contacts.each do |contact| 
			puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
			puts "[ ID    ] #{contact.id}"
			puts "[ NAME  ] #{contact.first_name} #{contact.last_name}" 
			puts "[ EMAIL ] #{contact.email}"
			puts "[ NOTE  ] '#{contact.note}'"
			puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		  puts "\n"
		end
		#puts "I'm in Database.display_all_contacts"
	end
end
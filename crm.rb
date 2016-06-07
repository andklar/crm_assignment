require_relative 'contact'

class CRM

  def initialize(name)
    @name = name
  end

  def main_menu
    while true # repeat indefinitely
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number: '
  end

  def call_option(user_selected)
    case user_selected
      when 1 then add_new_contact
      when 2 then modify_existing_contact
      when 3 then delete_contact
      when 4 then display_contacts
      when 5 then search_by_attribute
      when 6 then abort("you take care now, ya hear")
    end
  end

  def add_new_contact
    print 'Enter First Name: '
    first_name = gets.chomp

    print 'Enter Last Name: '
    last_name = gets.chomp

    print 'Enter Email Address: '
    email = gets.chomp

    print 'Enter a Note: '
    note = gets.chomp

    Contact.create(first_name, last_name, email, note)
  end

  def modify_existing_contact
    print 'Which contact would you like to modify? (id)'
    id = gets.chomp.to_i
    contact = Contact.find(id)
    puts "Which attribute do you want to change from the list: 'first_name', 'last_name', 'email', or 'note'?"
    attribute = gets.chomp
    puts "What is the new value for the attribute: #{attribute}?"
    value = gets.chomp
    contact.update(attribute, value)
    puts contact.full_name
  end

  def delete_contact
    print 'Which contact would you like to delete? (id)'
    id = gets.chomp.to_i
    Contact.delete(id)
  end

  # This method should accept as an argument an array of contacts
  # and display each contact in that array
  def display_contacts
    # HINT: Make use of this method in the display_all_contacts and search_by_attribute methods to keep your code DRY
  end

  def display_all_contacts
    puts Contact.all
    # HINT: Make use of the display_contacts method to keep your code DRY
  end

  # def search_by_attribute
  #
  #   puts "How would you like to search? (first name / last name / email / note)"
  #   input1 = gets.chomp
  #   if input1.include?("first" || "First")
  #     puts "What is the first name?"
  #     input2 = gets.chomp.capitalize!
  #     ## Help! ##
  #   elsif input1.include?("last" || "Last")
  #     puts "What is the last name?"
  #     input2 = gets.chomp.capitalize!
  #     ## Help! ##
  #   elsif input1.include?("email")
  #     puts "What is the email?"
  #     input2 = gets.chomp.downcase!
  #     ## Help! ##
  #   elsif input1.include?("note")
  #     puts "What is the note?"
  #     input2 = gets.chomp
  #     # Help! ##
  #   end
  #   # HINT: Make use of the display_contacts method to keep your code DRY
  # end

  # Add other methods here, if you need them.

end

crm1 = CRM.new("andrew")

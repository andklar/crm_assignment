class Contact
attr_accessor :first_name, :last_name, :email, :note
attr_reader :id

@@contacts = []
@@id = 1000

  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note = "n/a")
      @first_name = first_name
      @last_name = last_name
      @email = email
      @note = note
      @id = @@id
      @@id += 1
  end

  # This method should call the initializer,
  # store the newly created contact, and then return it
  def self.create(first_name, last_name, email, note = "n/a")
    new_contact = self.new(first_name, last_name, email, note)
    @@contacts << new_contact
    new_contact
  end

  # This method should return all of the existing contacts
  def self.all
    @@contacts
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    @@contacts.find { |contact| contact.id == id }
  end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update

  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by(attribute, value)



    # puts "How would you like to search? (first name / last name / email / note)"
    # input1 = gets.chomp
    # if input1.include?("first" || "First")
    #   puts "What is the first name?"
    #   input2 = gets.chomp.capitalize!
    #   ## Help! ##
    # elsif input1.include?("last" || "Last")
    #   puts "What is the last name?"
    #   input2 = gets.chomp.capitalize!
    #   ## Help! ##
    # elsif input1.include?("email")
    #   puts "What is the email?"
    #   input2 = gets.chomp.downcase!
    #   ## Help! ##
    # elsif input1.include?("note")
    #   puts "What is the note?"
    #   input2 = gets.chomp
    #   ## Help! ##
    # end
  end

  # This method should delete all of the contacts
  def self.delete_all

  end

  def full_name
    "#{@first_name} #{@last_name}"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete(contact)
    @@contacts.delete(contact)
  end

  # Feel free to add other methods here, if you need them.

end

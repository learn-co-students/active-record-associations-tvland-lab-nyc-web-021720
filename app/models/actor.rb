class Actor < ActiveRecord::Base
  # An actor has many characters and has many shows through characters
  has_many :characters 
  has_many :shows, through: :characters 

  #full_name, that returns the first and last name of an actor
  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  # #list_roles, that lists all of the characters that actor has alongside the show that the character is in
  # 'Tyrion Lannister - Game of Thrones'
  def list_roles 
    characters.map do |character|
      "#{character.name} - #{character.show.name}"
    end
  end

end
class Show < ActiveRecord::Base
  # A show has many characters and has many actors through characters
  belongs_to :network 
  has_many :characters 
  has_many :actors, through: :characters 

  # #actors_list that returns an Array of the full names of each actor associated with the a show. Remember, a show should have many actors through characters
  def actors_list
    characters.map do |character|
      "#{character.actor.first_name} #{character.actor.last_name}" 
    end
  end

  
  
end
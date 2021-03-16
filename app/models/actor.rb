class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        #lists all chars that actor plays next to 
        #show the character is in 
        #ex. peter_dinklage.list roles would return 
        #['Tyrion Lannister - Game of Thrones']
        self.characters.collect do |character|
            "#{character.name} - #{character.show.name}"
        end
    end
end
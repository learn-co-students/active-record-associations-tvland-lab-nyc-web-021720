class Show < ActiveRecord::Base 
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network

    def actors_list
        #returns array of full names of each actor
        #associated with a show
        self.characters.collect do |character|
            "#{character.actor.first_name} #{character.actor.last_name}"
        end 
    end
end
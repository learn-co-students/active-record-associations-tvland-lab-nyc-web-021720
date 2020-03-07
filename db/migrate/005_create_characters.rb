class CreateCharacters < ActiveRecord::Migration[5.1]
  # Write a migration for the characters table. A character should have a name, actor_id, and a show_id––a character will belong to a show (the show migration is already provided) and an actor, and we'll keep track of this relationship with these database table columns
  def change 
    create_table :characters do |t|
      t.string :name 
      t.integer :actor_id 
      t.integer :show_id 
    end
  end
end
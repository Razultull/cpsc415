class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
        t.string :Name, :null=>false
      t.string :Height, :null=>false
      t.string :Weight, :null=>false
      t.integer :Age, :null=>false
      t.string :Sex, :null=>false
      t.string :WODsTakenPartIn, :null=>false
      t.string :Location, :null=>false

      t.timestamps
    end
  end
end

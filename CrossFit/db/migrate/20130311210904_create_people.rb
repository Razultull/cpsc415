class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :Name, :null=>false
      t.date :DateOfBirth, :null=>false
      t.string :Sex, :null=>false
      t.string :Address
      t.integer :Height, :null=>false
      t.integer :Weight, :null=>false

      t.timestamps
    end
  end
end

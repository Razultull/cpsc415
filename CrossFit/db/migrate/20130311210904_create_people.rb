class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :Name
      t.date :DateOfBirth
      t.string :Sex
      t.string :Address
      t.integer :Height
      t.integer :Weight

      t.timestamps
    end
  end
end

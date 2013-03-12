class CreateWoDs < ActiveRecord::Migration
  def change
    create_table :wo_ds do |t|
      t.string :Name, :null=>false
      t.string :TimeNeeded, :null=>false
      t.integer :NumberOfDaysPerWeek, :null=>false
      t.integer :NumberOfExercises, :null=>false

      t.timestamps
    end
  end
end

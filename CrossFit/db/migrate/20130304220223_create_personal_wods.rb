class CreatePersonalWods < ActiveRecord::Migration
  def change
    create_table :personal_wods do |t|
      t.string :Name, :null=>false
      t.integer :Repetitions, :null=>false
      t.integer :WeightAmount, :null=>false
      t.string :TimeTaken, :null=>false
      t.integer :NumberOfDaysPerWeek, :null=>false
      t.string :PersonalBest, :null=>false

      t.timestamps
    end
  end
end

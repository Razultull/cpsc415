class CreateWods < ActiveRecord::Migration
  def change
    create_table :wods do |t|
      t.string :Name, :null=>false
      t.integer :Repetitions, :null=>false
      t.integer :WeightAmount, :null=>false
      t.time :TimeAlotted, :null=>false
      t.integer :NumberOfDaysPerWeek, :null=>false

      t.timestamps
    end
  end
end

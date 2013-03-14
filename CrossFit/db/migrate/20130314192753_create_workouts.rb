class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :name, :null =>false
      t.string :workout_length, :null =>false
      t.integer :number_of_days_per_week, :null =>false
      t.integer :number_of_exercises, :null =>false
      t.references :creator_id

      t.timestamps
    end
    add_index :workouts, :creator_id_id
  end
end

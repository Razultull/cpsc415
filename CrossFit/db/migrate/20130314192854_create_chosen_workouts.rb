class CreateChosenWorkouts < ActiveRecord::Migration
  def change
    create_table :chosen_workouts do |t|
      t.references :name

      t.timestamps
    end
    add_index :chosen_workouts, :name_id
  end
end

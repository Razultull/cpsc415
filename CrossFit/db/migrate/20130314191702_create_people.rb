class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name, :null =>false
      t.date :date_of_birth, :null =>false
      t.string :sex, :null =>false
      t.string :address
      t.integer :height, :null =>false
      t.integer :weight, :null =>false

      t.timestamps
    end
  end
end

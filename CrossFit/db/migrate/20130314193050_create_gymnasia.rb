class CreateGymnasia < ActiveRecord::Migration
  def change
    create_table :gymnasia do |t|
      t.string :name, :null =>false
      t.string :street_address
      t.string :city, :null =>false
      t.string :country, :null =>false

      t.timestamps
    end
  end
end

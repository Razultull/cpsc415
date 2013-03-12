class CreateGymnasia < ActiveRecord::Migration
  def change
    create_table :gymnasia do |t|
      t.string :Name, :null=>false
      t.string :StreetAddress, :null=>false
      t.string :City, :null=>false

      t.timestamps
    end
  end
end

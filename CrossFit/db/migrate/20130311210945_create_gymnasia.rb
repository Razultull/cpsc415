class CreateGymnasia < ActiveRecord::Migration
  def change
    create_table :gymnasia do |t|
      t.string :Name
      t.string :StreetAddress
      t.string :City

      t.timestamps
    end
  end
end

class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.decimal :longitude
      t.decimal :latitude

      t.timestamps
    end
  end
end

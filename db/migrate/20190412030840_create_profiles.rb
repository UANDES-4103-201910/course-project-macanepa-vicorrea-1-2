class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :picture
      t.text :biography
      t.string :country
      t.string :city
      t.string :gps_location

      t.timestamps
    end
  end
end

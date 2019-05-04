class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.text :biography
      t.string :country
      t.string :city
      t.string :image
      t.string :gps_location

      t.timestamps
    end
  end
end

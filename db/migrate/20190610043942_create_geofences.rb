class CreateGeofences < ActiveRecord::Migration[5.2]
  def change
    create_table :geofences do |t|
      t.string :key
      t.string :name

      t.timestamps
    end
  end
end

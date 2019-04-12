class CreateGeofences < ActiveRecord::Migration[5.2]
  def change
    create_table :geofences do |t|
      t.belongs_to :admin, foreign_key: true
      t.string :geofence

      t.timestamps
    end
  end
end

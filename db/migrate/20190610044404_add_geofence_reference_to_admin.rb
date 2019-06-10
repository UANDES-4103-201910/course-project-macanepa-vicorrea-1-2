class AddGeofenceReferenceToAdmin < ActiveRecord::Migration[5.2]
  def change
    add_reference :admins, :geofence, foreign_key: true
  end
end

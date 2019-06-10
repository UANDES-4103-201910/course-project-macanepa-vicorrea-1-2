class RemoveGeofenceToAdmin < ActiveRecord::Migration[5.2]
  def change
    remove_column :admins, :geofence
  end
end

class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.references :user, foreign_key: true
      t.string :geofence
      t.boolean :super_admin

      t.timestamps
    end
  end
end

class EditAdmin < ActiveRecord::Migration[5.2]
  def change
    rename_column :admins, :type, :admin_type
    rename_column :admins, :last_acces, last_access
  end
end

class ChangeLastAccessOnAdmin < ActiveRecord::Migration[5.2]
  def change
    rename_column :admins, :last_acces, :last_access
  end
end

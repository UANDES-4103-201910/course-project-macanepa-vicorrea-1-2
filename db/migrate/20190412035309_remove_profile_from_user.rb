class RemoveProfileFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :profile_id
  end
end

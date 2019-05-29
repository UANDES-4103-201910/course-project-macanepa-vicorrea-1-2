class RemoveImageInProfile < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :image
  end
end

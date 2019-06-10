class AddIncludeLocationToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :include_location, :boolean
  end
end

class AddPostStatusToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :is_open, :boolean
    add_column :posts, :is_solved, :boolean
  end
end

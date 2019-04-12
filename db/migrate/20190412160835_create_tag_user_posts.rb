class CreateTagUserPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_user_posts do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :post, foreign_key: true

      t.timestamps
    end
  end
end

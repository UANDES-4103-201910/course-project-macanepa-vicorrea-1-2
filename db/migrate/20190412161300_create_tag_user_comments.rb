class CreateTagUserComments < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_user_comments do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :comment, foreign_key: true

      t.timestamps
    end
  end
end

class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.belongs_to :user, foreign_key: true
      t.string :title
      t.text :content
      t.string :country
      t.string :city
      t.string :gps_location

      t.timestamps
    end
  end
end

class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.belongs_to :post, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end

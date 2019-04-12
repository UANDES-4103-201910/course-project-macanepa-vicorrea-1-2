class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :post, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end

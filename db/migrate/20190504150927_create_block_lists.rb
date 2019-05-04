class CreateBlockLists < ActiveRecord::Migration[5.2]
  def change
    create_table :block_lists do |t|
      t.references :user, foreign_key: true
      t.datetime :exit_date

      t.timestamps
    end
  end
end

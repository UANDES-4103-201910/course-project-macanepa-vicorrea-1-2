class CreateBlacklists < ActiveRecord::Migration[5.2]
  def change
    create_table :blacklists do |t|
      t.references :user, foreign_key: true
      t.datetime :exit_date

      t.timestamps
    end
  end
end

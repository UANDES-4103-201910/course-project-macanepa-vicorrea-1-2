class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :last_name
      t.string :email
      t.string :password
      t.datetime :last_login
      t.belongs_to :profile, foreign_key: true

      t.timestamps
    end
  end
end

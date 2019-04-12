class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :last_login
      t.string :datetime
      t.belongs_to :profile, foreign_key: true

      t.timestamps
    end
  end
end

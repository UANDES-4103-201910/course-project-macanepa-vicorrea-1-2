class CreateValidations < ActiveRecord::Migration[5.2]
  def change
    create_table :validations do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :post, foreign_key: true
      t.integer :validation_type

      t.timestamps
    end
  end
end

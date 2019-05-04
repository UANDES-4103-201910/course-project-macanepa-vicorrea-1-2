class CreateValidations < ActiveRecord::Migration[5.2]
  def change
    create_table :validations do |t|
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true
      t.string :validation_type

      t.timestamps
    end
  end
end

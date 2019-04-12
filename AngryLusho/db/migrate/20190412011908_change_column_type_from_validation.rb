class ChangeColumnTypeFromValidation < ActiveRecord::Migration[5.2]
  def change
    rename_column :validations, :type, :validation_type
  end
end

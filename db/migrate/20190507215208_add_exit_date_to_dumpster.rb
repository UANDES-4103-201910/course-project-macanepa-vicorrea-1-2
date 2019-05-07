class AddExitDateToDumpster < ActiveRecord::Migration[5.2]
  def change
    add_column :dumpsters, :exit_date, :datetime
  end
end

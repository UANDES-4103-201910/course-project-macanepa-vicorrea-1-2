class CreateFileAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :file_attachments do |t|
      t.belongs_to :post, foreign_key: true
      t.string :file

      t.timestamps
    end
  end
end

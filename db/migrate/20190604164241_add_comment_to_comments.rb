class AddCommentToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :reply, foreign_key: false
    add_foreign_key :comments, :comments, column: :reply_id

  end
end

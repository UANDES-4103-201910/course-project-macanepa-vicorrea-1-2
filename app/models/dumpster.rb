class Dumpster < ApplicationRecord
  belongs_to :post

  validates :post_id, presence: true

  def get_email_owner
    owner = User.find(Post.find(post_id).user_id).email
  end

  def get_post_title
    post_title = Post.find(post_id).title
  end
end

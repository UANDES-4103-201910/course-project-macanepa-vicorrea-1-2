class SharedPost < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :user_id, :post_id, presence: true
  validates :user_id, uniqueness: { scope: [:post_id] }

  # def check_user
  #   puts("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
  #   r= user_id != Post.find(post_id).user_id
  #   puts(r)
  #   puts("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
  #   return r
  # end

end

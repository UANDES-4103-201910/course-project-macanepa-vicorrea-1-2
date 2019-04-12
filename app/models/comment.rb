class Comment < ApplicationRecord
  validates :content, presence: true
  validates :post_id, presence: true
  validates :user_id, presence: true

  belongs_to :user
  belongs_to :post
  belongs_to :comment, optional: true
end

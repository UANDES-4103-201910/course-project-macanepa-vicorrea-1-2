class Comment < ApplicationRecord
  belongs_to :post, optional: true
  belongs_to :user, :class_name => 'User'
  belongs_to :comment, optional: true
  has_many :tags

  validates :user_id, :content, presence: true
end

class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user, :class_name => 'User'
  belongs_to :comment, optional: true
  has_many :tags
end

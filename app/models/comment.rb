class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  belongs_to :comment
  has_many :tags
end

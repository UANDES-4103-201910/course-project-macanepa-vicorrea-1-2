class Comment < ApplicationRecord
  validates :content, presence: true

  belongs_to :user, presence: true
  belongs_to :post, presence: true
  belongs_to :comment, optional: true
end

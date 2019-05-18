class Tag < ApplicationRecord
  belongs_to :user
  belongs_to :comment
  belongs_to :post

  validates :user_id, presence: true
end

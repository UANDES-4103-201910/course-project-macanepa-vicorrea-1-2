class Validation < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :user_id, :post_id, :validation_type, presence: true
end

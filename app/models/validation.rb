class Validation < ApplicationRecord
  validates :user_id, uniqueness: {scope: :post}, presence: true
  validates :validation_type, inclusion: [1,-1], numericality: {only_integer: true}
  validates :post_id, presence: true

  belongs_to :user
  belongs_to :post
end

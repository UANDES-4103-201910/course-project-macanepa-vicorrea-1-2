class Validation < ApplicationRecord
  validates :user_id, uniqueness: {scope: :post}

  belongs_to :user
  belongs_to :post
end

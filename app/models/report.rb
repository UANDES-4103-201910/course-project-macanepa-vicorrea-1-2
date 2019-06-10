class Report < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :user_id, :post_id, :content, presence: true
  validates :content, length: { minimum: 5 }
end

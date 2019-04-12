class Image < ApplicationRecord
  validates :image, presence: true
  validates :post_id, presence: true

  belongs_to :post
end

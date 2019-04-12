class FileAttachment < ApplicationRecord
  validates :file, presence: true
  validates :post_id, presence: true

  belongs_to :post
end

class FileAttachment < ApplicationRecord

  validates :file, presence: true

  belongs_to :post
end

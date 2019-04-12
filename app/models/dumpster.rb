class Dumpster < ApplicationRecord
  validates :post_id, uniqueness: true, presence: true

  belongs_to :post
end

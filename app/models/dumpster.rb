class Dumpster < ApplicationRecord
  validates :post_id, uniqueness: true

  belongs_to :post
end

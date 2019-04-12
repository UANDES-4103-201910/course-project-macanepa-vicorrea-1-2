class Dumpster < ApplicationRecord

  validates :post, uniqueness: true

  belongs_to :post
end

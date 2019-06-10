class Location < ApplicationRecord
  has_one :post
  has_one :profile
end

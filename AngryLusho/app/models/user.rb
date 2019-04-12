class User < ApplicationRecord
  belongs_to :profile
  has_many :validations
end

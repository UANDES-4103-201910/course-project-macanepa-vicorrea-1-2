class User < ApplicationRecord
  validates :email, uniqueness: true
  validates :username, uniqueness: true

  belongs_to :profile
  has_many :validations
end
class User < ApplicationRecord
  validates :email, uniqueness: true
  validates :username, uniqueness: true
  validates :password, length: {minimum: 8}

  has_one :profile
  has_many :validations

end

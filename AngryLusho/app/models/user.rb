class User < ApplicationRecord
  validates :email, uniqueness: true
  validates :username, uniqueness: true, length: {minimum: 5}
  validates :password, length: { minimum: 8 }

  belongs_to :profile
  has_many :validations
end
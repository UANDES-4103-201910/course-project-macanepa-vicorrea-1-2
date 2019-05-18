class Profile < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true, uniqueness: true
  validates :biography, :city, :country, presence: true # the image presence is also true
end

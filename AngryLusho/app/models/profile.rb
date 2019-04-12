class Profile < ApplicationRecord

  validates :biography, length: {maximum: 200} #Can't have lengthy bio

  has_one :users
end

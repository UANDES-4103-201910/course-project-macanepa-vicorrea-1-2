class Profile < ApplicationRecord
  validates :biography, length: {maximum: 200}

  has_one :user
end

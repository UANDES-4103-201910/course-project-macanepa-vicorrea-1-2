class Profile < ApplicationRecord
  validates :biography, length: {maximum: 200}

  belongs_to :user
end

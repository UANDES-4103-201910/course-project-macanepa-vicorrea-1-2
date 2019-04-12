class Profile < ApplicationRecord
  validates :biography, length: {maximum: 200}
  validates :user_id, presence: true

  belongs_to :user
end

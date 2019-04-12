class Blacklist < ApplicationRecord
  validates :user_id, uniqueness: true, presence: true

  belongs_to :user
end

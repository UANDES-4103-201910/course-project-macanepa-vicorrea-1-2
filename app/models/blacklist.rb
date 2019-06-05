class Blacklist < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true

  def get_owner_email
    email = User.find(user_id).email
  end
end

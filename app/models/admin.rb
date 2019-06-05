class Admin < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true, uniqueness: true

  def get_email
    email = User.find(user_id).email
  end

  def get_last_access
    last_access = User.find(user_id).last_access
  end

  def get_user_id
    the_user_id = User.find(user_id).id
  end

  def get_user
    user = User.find(user_id)
  end

end

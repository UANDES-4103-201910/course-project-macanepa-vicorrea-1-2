class Validation < ApplicationRecord
  before_validation :remove_old_validation
  belongs_to :user
  belongs_to :post

  validates :user_id, :post_id, :validation_type, presence: true
  validates :user_id, uniqueness: { scope: [:post_id] }

  def remove_old_validation
    Validation.where(user_id: user_id, post_id: post_id).delete_all
  end


end

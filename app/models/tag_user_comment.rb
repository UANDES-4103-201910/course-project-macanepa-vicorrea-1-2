class TagUserComment < ApplicationRecord
  validates :user_id, uniqueness: {scope: :comment_id}
  validates :comment_id, presence: true

  belongs_to :user
  belongs_to :comment
end

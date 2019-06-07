class Comment < ApplicationRecord
  belongs_to :post, optional: true
  belongs_to :user, :class_name => 'User'
  belongs_to :comment, :class_name => 'Comment', optional: true
  belongs_to :reply, :class_name => 'Comment',optional: true
  has_many :tags, dependent: :delete_all

  has_many :comments, :class_name => 'Comment', :foreign_key => 'comment_id', dependent: :delete_all
  has_many :replies, :class_name => 'Comment', :foreign_key => 'reply_id', dependent: :delete_all

  validates :user_id, :content, presence: true
  validates :content, length: { minimum: 2 }
end

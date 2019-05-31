class Post < ApplicationRecord
  belongs_to :user
  has_one :dumpster
  has_many :comments
  has_many :follows
  has_many :shared_posts
  has_many :reports
  has_many :validations
  has_many :tags

  validates :user_id, :title, :content, presence: true
end

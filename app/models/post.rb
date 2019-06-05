class Post < ApplicationRecord
  belongs_to :user
  has_one :dumpster
  belongs_to :location, optional: true
  has_many :comments
  has_many :follows
  has_many :shared_posts
  has_many :reports
  has_many :validations
  has_many :tags
  belongs_to :shared_post, optional: true
  has_one :dumpster
  has_many :comments, dependent: :delete_all
  has_many :reports, dependent: :delete_all
  has_many :validations, dependent: :delete_all
  has_many :follows, dependent: :delete_all
  has_many :tags, dependent: :delete_all

  has_many_attached :images
  has_many_attached :attachments

  validates :user_id, :title, :content, presence: true
  validates :title, :content, length: { minimum: 5 }
end

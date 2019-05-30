class Post < ApplicationRecord
  belongs_to :user
  belongs_to :shared_post, optional: true
  has_one :dumpster
  has_many :comments, dependent: :delete_all
  has_many :reports, dependent: :delete_all
  has_many :validations, dependent: :delete_all
  has_many :follows, dependent: :delete_all
  has_many :tags, dependent: :delete_all

  validates :user_id, :title, :content, presence: true
end

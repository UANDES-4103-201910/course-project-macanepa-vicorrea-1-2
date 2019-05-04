class Post < ApplicationRecord
  belongs_to :user
  belongs_to :shared_post
  has_one :dumpster
  has_many :comments
  has_many :reports
  has_many :validations
  has_many :follows
  has_many :tags
end

class User < ApplicationRecord
  has_one :profile
  has_one :admin
  has_one :blacklist
  has_one :suspension_list
  has_one :block_list
  has_many :comments
  has_many :posts
  has_many :validations
  has_many :reports
  has_many :shared_posts
  has_many :follows
  has_many :tags
end
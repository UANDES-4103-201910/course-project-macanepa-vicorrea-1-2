class Post < ApplicationRecord
  belongs_to :user
  has_many :dumpsters, dependent: :delete_all
  belongs_to :location, optional: true
  has_many :comments, dependent: :delete_all
  has_many :follows, dependent: :delete_all
  has_many :shared_posts, dependent: :delete_all
  has_many :reports, dependent: :delete_all
  has_many :validations, dependent: :delete_all
  has_many :tags, dependent: :delete_all
  belongs_to :shared_post, optional: true
  has_many :comments, dependent: :delete_all
  has_many :reports, dependent: :delete_all
  has_many :validations, dependent: :delete_all
  has_many :follows, dependent: :delete_all
  has_many :tags, dependent: :delete_all

  has_many_attached :images
  has_many_attached :attachments

  validates :user_id, :title, :content, presence: true
  validates :title, :content, length: { minimum: 5 }

  def get_email_owner
    owner = User.find(user_id).email
  end

  def is_in_dumpster
    is = !Dumpster.where(post_id: id, exit_date: nil).empty?
  end
end

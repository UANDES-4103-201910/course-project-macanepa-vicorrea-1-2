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

  def get_dumpster_instance_id
    dump_ins_id = Dumpster.where(post_id: id, exit_date: nil).first.id
  end

#   A user that has two or more posts flagged as inaproppriate by three or
#   more different users (and/or administrators) within a week will fall
#   into a blacklist visible by all site administrators.


  # Obtain the number of different reporting users (within a week from now)
  def get_diff_reporting_users_within_a_week_num
    reports = Report.where(post_id: id, created_at: (Time.now - 1.week.to_i .. Time.now))
    num = reports.distinct.pluck(:user_id).length
  end

  # If after account suspension the user publishes another post
  # that is flagged inappropriate by three people or more, the user account will be blocked permanently.
  def get_reporting_users_num
    num = Report.where(post_id: id).count
  end

end
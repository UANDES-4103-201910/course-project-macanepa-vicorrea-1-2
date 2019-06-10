class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable,
         :omniauthable, omniauth_providers: [:google_oauth2]

  has_one :profile, dependent: :destroy
  has_one :admin, dependent: :destroy
  has_many :blacklists, dependent: :delete_all
  has_many :suspension_lists, dependent: :delete_all
  has_many :block_lists, dependent: :delete_all
  has_many :comments, dependent: :delete_all
  has_many :posts, dependent: :delete_all
  has_many :validations, dependent: :delete_all
  has_many :reports, dependent: :delete_all
  has_many :shared_posts, dependent: :delete_all
  has_many :follows, dependent: :delete_all
  has_many :tags, dependent: :delete_all

  # validates :email, presence: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}, uniqueness: true
  validates :name, presence: true

  def self.from_omniauth(auth)
    where(provider: auth.provider ,uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.name = auth.info.name
      user.password = Devise.friendly_token[0, 20]
    end
  end

  def is_admin
    possible_admin = Admin.where(user_id: id).count
    if possible_admin == 0
      false
    elsif possible_admin >= 1
      true
    end
  end


  def get_name
    name = ""
    if not self.name.nil?
      name = self.name
      name += " "
    end
    if not self.last_name.nil?
      name += self.last_name
      end
    if name == ""
      name = self.email
    end
    name
  end

  def get_geofence
    admin = Admin.where(user_id: id)
    if admin.count == 0
      ""
    elsif admin.count >= 1
      have_geofence = !admin.first.geofence_id.nil?
      if have_geofence
        geo = Geofence.find(admin.first.geofence_id).name
      else
        "None"
      end
    end
  end

  def is_super_admin
    admin = Admin.where(user_id: id)
    if admin.count == 0
      false
    elsif admin.count >= 1
      is_super = admin.first.super_admin
    end
  end

  def get_admin
    admin = Admin.where(user_id: id).first
  end

  def is_in_blacklist
    is = !Blacklist.where(user_id: id, exit_date: nil).empty?
  end

  def is_in_suspension_list
    is = !SuspensionList.where(user_id: id, exit_date: nil).empty?
  end

  def is_in_block_list
    is = !BlockList.where(user_id: id, exit_date: nil).empty?
  end

  def get_blacklist_instance_id
    black_ins_id = Blacklist.where(user_id: id, exit_date: nil).first.id
  end

  def get_suspension_instance_id
    suspension_ins_id = SuspensionList.where(user_id: id, exit_date: nil).first.id
  end

  def get_block_instance_id
    block_ins_id = BlockList.where(user_id: id, exit_date: nil).first.id
  end

  def get_blacklist_entry_date
    entry_date = Blacklist.where(user_id: id, exit_date: nil).first.created_at
  end

  def was_on_blacklist
    was = !Blacklist.where("user_id = ? AND exit_date NOT ?", id, nil).empty?
  end

  def get_ids_reported_posts_user_blacklisted
    reported_posts_ids = Report.all.pluck(:post_id)
    my_reported_post = Post.where(user_id: id, id: reported_posts_ids).pluck(:id)
  end

  #   A user that has two or more posts flagged as inaproppriate by three or
  #   more different users (and/or administrators) within a week will fall
  #   into a blacklist visible by all site administrators.

  def have_condition_to_blacklist
    my_posts = Post.where(user_id: id)
    num = 0
    my_posts.each do |my_post|
      if my_post.get_diff_reporting_users_within_a_week_num >= 3
        num += 1
      end
    end
    if num >= 2
      true
    else
      false
    end
  end

end

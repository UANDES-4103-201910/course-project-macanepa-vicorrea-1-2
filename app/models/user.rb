class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable,
         :omniauthable, omniauth_providers: [:google_oauth2]

  has_one :profile, dependent: :destroy
  has_one :admin, dependent: :destroy
  has_one :blacklist
  has_one :suspension_list
  has_one :block_list
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
    if(not self.last_name.nil?)
      name += self.last_name
      end
    if name == ""
      name = self.email
    end
    return name
  end


end

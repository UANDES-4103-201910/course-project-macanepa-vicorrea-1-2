class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable,
         :omniauthable, omniauth_providers: [:google_oauth2]

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

  # validates :email, presence: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}, uniqueness: true
  # validates :name, :last_name, :password, presence: true

  def self.from_omniauth(auth)
    where(provider: auth.provider ,uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.name = auth.info.name
      user.password = Devise.friendly_token[0, 20]
      puts("INTENTANDO CREAR NUEVO USER!\n\n\n\n\n")
    end
  end
end

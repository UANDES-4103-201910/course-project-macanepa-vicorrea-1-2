class Admin < ApplicationRecord
  validates :email, uniqueness: true, presence: true, format: {with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/}
  validates :username, uniqueness: true, presence: true
  validates :password, length: {minimum: 8}, presence: true
  validates :admin_type, inclusion: {in: ["admin", "super_admin"]}

  after_update :last_access_not_future

  private
  def last_access_not_future
    if DateTime.now < last_access
      throw :abort
    end
  end
end
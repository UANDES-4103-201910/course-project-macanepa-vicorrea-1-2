class Geofence < ApplicationRecord
  validates :admin_id, presence: true

  belongs_to :admin
end

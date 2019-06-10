class Admin < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true, uniqueness: true

  # def get_email
  #   email = User.find(user_id).email
  # end
  #
  # def get_last_access
  #   last_access = User.find(user_id).last_access
  # end
  #
  # def get_user_id
  #   the_user_id = User.find(user_id).id
  # end
  #
  # def get_user
  #   user = User.find(user_id)
  # end

  def post_in_geofence(lat_coordinate, lng_coordinate) # coordinates are strings
    if !geofence_id.nil?
      require 'net/http'
      require 'json'
      begin
        uri = URI('https://api.fencer.io/v1.0/position/inside/' + Geofence.find(geofence_id).key)
        http = Net::HTTP.new(uri.host, uri.port)
        http.use_ssl = true
        headers = {'Authorization' => '5195ba22-ab3c-52f6-bab9-d15ff7b8794e', 'Lat-Pos' => lat_coordinate.to_s, 'Lng-Pos' => lng_coordinate.to_s}
        req = Net::HTTP::Get.new(uri.path, headers)
        res = http.request(req)
        resp = res.body
        resp_in_js = JSON.parse(resp)
        answer = resp_in_js["data"]["inside"]
      end
    else
      true
    end
  end

end

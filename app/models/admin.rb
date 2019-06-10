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
    if !geofence.nil?
      require 'net/http'
      require 'json'
      begin
        uri = URI('https://api.fencer.io/v1.0/position/inside/' + geofence)
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

  def get_geofence_name
    if geofence == 'c4978ffa-e5a1-4e15-8098-dda851a69b4b'
      name = 'South of South America (Chile, Argentina and Uruguay)'
    elsif geofence == '8a0ddfa1-0b40-43d7-9e8f-a8c2d612a557'
      name = 'Bolivia and Paraguay'
    elsif geofence == 'd3577b70-7268-435c-9f50-61dcbf6dd4a4'
      name = 'North of South America (Colombia, Venezuela, Suriname and the Guianas)'
    elsif geofence == '5cc8cc5b-1a34-4ad7-99d4-3929be4f9597'
      name = 'Brazil'
    elsif geofence == '889d47f4-3010-4d5d-b6c9-eef07c0d50f4'
      name = 'Peru and Ecuador'
    end
  end

end

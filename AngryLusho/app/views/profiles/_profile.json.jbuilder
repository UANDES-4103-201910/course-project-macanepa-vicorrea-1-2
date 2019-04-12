json.extract! profile, :id, :picture, :biography, :country, :city, :gps_location, :created_at, :updated_at
json.url profile_url(profile, format: :json)

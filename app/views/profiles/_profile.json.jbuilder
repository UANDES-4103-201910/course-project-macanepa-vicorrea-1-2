json.extract! profile, :id, :user_id, :biography, :country, :city, :image, :gps_location, :created_at, :updated_at
json.url profile_url(profile, format: :json)

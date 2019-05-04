json.extract! post, :id, :user_id, :title, :content, :city, :country, :gps_location, :created_at, :updated_at
json.url post_url(post, format: :json)

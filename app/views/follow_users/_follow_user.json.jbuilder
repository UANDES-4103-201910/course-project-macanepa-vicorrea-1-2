json.extract! follow_user, :id, :request_user_id, :followed_user_id, :created_at, :updated_at
json.url follow_user_url(follow_user, format: :json)

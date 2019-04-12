json.extract! follow_post, :id, :user_id, :post_id, :created_at, :updated_at
json.url follow_post_url(follow_post, format: :json)

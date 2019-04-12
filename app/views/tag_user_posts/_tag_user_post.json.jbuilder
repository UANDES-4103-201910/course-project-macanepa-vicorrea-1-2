json.extract! tag_user_post, :id, :user_id, :post_id, :created_at, :updated_at
json.url tag_user_post_url(tag_user_post, format: :json)

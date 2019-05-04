json.extract! shared_post, :id, :user_id, :post_id, :content, :created_at, :updated_at
json.url shared_post_url(shared_post, format: :json)

json.extract! tag_usercomment, :id, :user_id, :comment_id, :created_at, :updated_at
json.url tag_usercomment_url(tag_usercomment, format: :json)

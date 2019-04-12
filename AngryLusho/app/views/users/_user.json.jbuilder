json.extract! user, :id, :username, :email, :password, :last_login, :datetime, :profile_id, :created_at, :updated_at
json.url user_url(user, format: :json)

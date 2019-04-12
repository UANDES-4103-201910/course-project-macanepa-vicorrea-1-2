json.extract! user, :id, :username, :name, :last_name, :email, :password, :last_login, :profile, :created_at, :updated_at
json.url user_url(user, format: :json)

json.extract! admin, :id, :username, :password, :email, :type, :last_acces, :created_at, :updated_at
json.url admin_url(admin, format: :json)

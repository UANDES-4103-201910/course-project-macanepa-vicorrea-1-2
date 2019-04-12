json.extract! admin, :id, :username, :password, :email, :admin_type, :last_access, :created_at, :updated_at
json.url admin_url(admin, format: :json)

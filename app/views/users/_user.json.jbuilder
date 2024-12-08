json.extract! user, :id, :username, :email, :password_hash, :profile_icon, :coment_count, :report_count, :created_at, :updated_at
json.url user_url(user, format: :json)

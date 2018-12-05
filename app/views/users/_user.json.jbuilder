json.extract! user, :id, :first_name, :string, :last_name, :string, :email, :string, :uid, :string, :provider, :string, :created_at, :updated_at
json.url user_url(user, format: :json)

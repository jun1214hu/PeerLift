json.extract! user, :id, :name, :string, :email, :grad_year, :grade_level, :school, :gender, :created_at, :updated_at
json.url user_url(user, format: :json)

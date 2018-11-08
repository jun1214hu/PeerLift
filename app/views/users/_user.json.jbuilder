json.extract! user, :id, :first_name, :string, :last_name, :string, :email, :string, :grad_year, :integer, :grade, :integer, :school, :city, :state, :created_at, :updated_at
json.url user_url(user, format: :json)

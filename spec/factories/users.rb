FactoryBot.define do

# Create a sample user
  factory :user do
    first_name { 'John' }
    last_name { 'Doe' }
    email { 'john.doe@example.com' }
  end

 # Reference a class that we know (users)
  factory :random_user, class: User do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.safe_email }
  end
end
# This has been modified to minitest

FactoryBot.define do
  factory :user do
    first_name { "John" }
    last_name  { "Doe" }
    email { "John.Doe@example.com "}
    uid { "000 "}
    provider { 'Google' }
  end

  factory :random_user, class: User do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.safe_email }
    provider { Faker::Company.name }
    uid { Faker::Code.ean}
  end
end
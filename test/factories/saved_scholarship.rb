FactoryBot.define do
  factory :saved_scholarship do
      user_id { Faker::Number.between(0,1)}
      scholarship_guide_id { Faker::Number.between(0,1) }
      scholarship_name { Faker::HarryPotter.spell }
      completed { Faker::Number.between(0,1)  }
  end
end

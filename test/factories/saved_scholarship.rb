# TODO: This needs to change!! --> controller and model


FactoryBot.define do
  factory :saved_scholarship do
      user_id { Faker::Number.between(0,1)}
      scholarship_guide_id { Faker::Number.between(0,1) }
      scholarship_name { Faker::HarryPotter.spell }
  end
end

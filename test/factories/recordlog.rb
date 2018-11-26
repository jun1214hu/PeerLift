FactoryBot.define do

	# schema
# user_id, 
# 	:scholarship_guide_id, 
# 	:scholarship_name, 
# 	:saved, 
# 	:completed, 
# 	:previous_save,
# 	presence: true
# end

  factory :record_log do
      user_id { Faker::Number.between(0,1)}
      scholarship_guide_id { Faker::Number.between(0,1) }
      scholarship_name { Faker::HarryPotter.spell }
      saved{ Faker::Number.between(0,1) }
      completed { Faker::Number.between(0,1)  }
  end
end

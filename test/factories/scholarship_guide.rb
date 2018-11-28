FactoryBot.define do
  factory :scholarship_guide do
      program_name { Faker::HarryPotter.spell }
      image_url { Faker::Internet.url }
      metric_box1 { Faker::HarryPotter.spell }
      metric_box2 { Faker::HarryPotter.spell }
      metric_box3 { Faker::HarryPotter.spell }
      description_short { Faker::HarryPotter.quote }
      description_long { Faker::HarryPotter.quote }
      app_count { Faker::Number.number(2) }
      essay_count { Faker::Number.number(2) }
      transcript_count { Faker::Number.number(2) }
      resume_count { Faker::Number.number(2) }
      time_estimate { Faker::Number.number(2) }
  end

  factory :random_scholarship_guide, class: ScholarshipGuide do
      program_name { Faker::HarryPotter.spell }
      image_url { Faker::Internet.url }
      metric_box1 { Faker::HarryPotter.spell }
      metric_box2 { Faker::HarryPotter.spell }
      metric_box3 { Faker::HarryPotter.spell }
      description_short { Faker::HarryPotter.quote }
      description_long { Faker::HarryPotter.quote }
      app_count { Faker::Number.number(2) }
      essay_count { Faker::Number.number(2) }
      transcript_count { Faker::Number.number(2) }
      resume_count { Faker::Number.number(2) }
      time_estimate { Faker::Number.number(2) }
  end
end

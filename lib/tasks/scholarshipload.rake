#encoding: utf-8 

# Your rake file:
require 'rake/clean'

# [] is alias for .new(), and we can chain .exclude
CLEAN = FileList['deployment_dir/**/*']

namespace :import do
  desc "imports scholarship data from scholarship csv"
  task :scholarships => :environment do
    require 'csv'
    CSV.foreach('db/test.csv', :headers => true) do |row|
      program_name = row[0]
      image_url = row[1]
      metric_box1 = row[2] # Selectivity
      metric_box2 = row[3] # Amount
      metric_box3 = row[4] # Due date
      description_short = row[5]
      description_long = row[6]
      app_count = row[7]
      essay_count = row[8]
      transcript_count = row[9]
      resume_count = row[10]
      time_estimate = row[11]
      program_url = row[12]
      location = row[13]
      diversity = row[14]
      low_income = row[15]
      stem = row[16]
      daca = row[17]
      freshman = row[18]
      sophomore = row[19]
      junior = row[20]
      senior = row[21]

      ScholarshipGuide.create!(program_name:program_name, image_url:image_url,
      	metric_box1:metric_box1, metric_box2:metric_box2, metric_box3:metric_box3,
      	description_short:description_short, description_long:description_long,
      	app_count:app_count, essay_count:essay_count, transcript_count:transcript_count,
      	resume_count:resume_count, time_estimate:time_estimate, 
      	program_url:program_url, location:location, diversity:diversity, low_income:low_income,
      	STEM:stem, DACA:daca, freshman:freshman, sophomore:sophomore, junior:junior, senior:senior)
    end
  end
end


# # create_table "scholarship_guides", force: :cascade do |t|
#     t.string "program_name" #0
#     t.string "image_url" #1
#     t.string "metric_box1" #2
#     t.string "metric_box2" #3
#     t.string "metric_box3" #4
#     t.string "description_short" #5
#     t.string "description_long" #6
#     t.integer "app_count" #7
#     t.integer "essay_count" #8
#     t.integer "transcript_count" #9
#     t.integer "resume_count" #10
#     t.string "time_estimate" #11
#     t.datetime "created_at", null: false #12
#     t.datetime "updated_at", null: false #13
#     t.string "program_url" #14
#     t.string "location" #15
#     t.boolean "diversity" #16
#     t.boolean "low_income" #17
#     t.boolean "STEM" #18
#     t.boolean "DACA" #19
#     t.boolean "freshman" #20
#     t.boolean "sophomore" #21
#     t.boolean "junior" #22
#     t.boolean "senior" #23
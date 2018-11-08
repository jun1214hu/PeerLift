namespace :import do
  desc "imports scholarship data from scholarship csv"
  task :data => :environment do
    require 'csv'
    CSV.foreach('db/test.csv') do |row|
      program_name = row[1]
      metric_box1 = row[10]
      ScholarshipGuide.create!(program_name:program_name, metric_box1:metric_box1)
    end
  end
end

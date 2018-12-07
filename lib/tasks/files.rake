#encoding: utf-8 

# Your rake file:
require 'rake/clean'

# [] is alias for .new(), and we can chain .exclude
CLEAN = FileList['deployment_dir/**/*']

namespace :import do
  desc "imports files data from file csv"
  task :files => :environment do
    require 'csv'
    CSV.foreach('db/files.csv', :headers => true) do |row|

      user_id = row[1]
      given_name = row[2] 
      attachment = row[3] 
      created_at = row[4] 
      updated_at = row[5]
    

      FileUpload.create!(user_id:user_id,
      	given_name:given_name, attachment:attachment, created_at:created_at,
      	updated_at:updated_at)
    end
  end
end
